<?php
header('Content-Type: application/json');

require_once __DIR__ . '/database/init.php';

$date = isset($_GET['date']) && preg_match('/^\d{4}-\d{2}-\d{2}$/', $_GET['date']) ? $_GET['date'] : date('Y-m-d');

function metrics_zero() {
    return [
        'target' => 0,
        'actual' => 0,
        'difference' => 0,
        'achievement_rate' => 0,
        'reject_qty' => 0,
        'reject_ppm' => 0
    ];
}

function compute_from_breaks($database, $table, $lineColumn, $lineId, $date, $shiftLike) {
    $where = [
        'production_date' => $date,
        $lineColumn => $lineId,
        'Shift[~]' => $shiftLike
    ];

    try {
        $target = (int)($database->max($table, 'plan_accu', $where) ?? 0);
        $actual = (int)($database->max($table, 'actual_accu', $where) ?? 0);
        $reject = (int)($database->max($table, 'reject_accu', $where) ?? 0);
    } catch (Exception $e) {
        return null;
    }

    if ($target === 0 && $actual === 0 && $reject === 0) return null;

    $diff = $actual - $target;
    $rate = $target > 0 ? round(($actual / $target) * 100, 2) : 0.0;
    $ppm  = $actual > 0 ? (int)round(($reject * 1000000) / $actual) : 0;

    return [
        'target' => $target,
        'actual' => $actual,
        'difference' => $diff,
        'achievement_rate' => $rate,
        'reject_qty' => $reject,
        'reject_ppm' => $ppm
    ];
}

function compute_from_record($database, $table, $lineColumn, $lineId, $date, $shiftLike) {
    try {
        $row = $database->get($table, ['plan_target', 'total_actual', 'reject_count'], [
            'production_date' => $date,
            $lineColumn => $lineId,
            'Shift[~]' => $shiftLike,
            'ORDER' => [ 'record_id' => 'DESC' ]
        ]);
    } catch (Exception $e) {
        $row = null;
    }

    if (!$row) return null;

    $target = (int)($row['plan_target'] ?? 0);
    $totalActual = $row['total_actual'] ?? 0;
    // total_actual may be string; cast safely
    $actual = is_numeric($totalActual) ? (int)$totalActual : (int)preg_replace('/[^0-9]/', '', (string)$totalActual);
    $reject = (int)($row['reject_count'] ?? 0);

    if ($target === 0 && $actual === 0 && $reject === 0) return null;

    $diff = $actual - $target;
    $rate = $target > 0 ? round(($actual / $target) * 100, 2) : 0.0;
    $ppm  = $actual > 0 ? (int)round(($reject * 1000000) / $actual) : 0;

    return [
        'target' => $target,
        'actual' => $actual,
        'difference' => $diff,
        'achievement_rate' => $rate,
        'reject_qty' => $reject,
        'reject_ppm' => $ppm
    ];
}

function get_metrics($database, $section, $lineId, $date, $shift) {
    $like = ($shift === 'Night') ? '%Night%' : '%Day%';

    if ($section === 'CABLE') {
        $m = compute_from_breaks($database, 'cproduction_breaks', 'Cline_ID', $lineId, $date, $like);
        if ($m === null) $m = compute_from_record($database, 'cproduction_record', 'Cline_ID', $lineId, $date, $like);
        $m = $m ?? metrics_zero();

        // Enrich with model and takttime from latest matching record
        try {
            $rec = $database->get('cproduction_record', ['Cdrawing_ID', 'takttime'], [
                'production_date' => $date,
                'Cline_ID' => $lineId,
                'Shift[~]' => $like,
                'ORDER' => [ 'record_id' => 'DESC' ]
            ]);
            if ($rec) {
                $modelLabel = '';
                if (!empty($rec['Cdrawing_ID'])) {
                    try {
                        $modelLabel = (string)($database->get('cdrawingnumber', 'Cdrawingnum', [ 'Cdrawing_ID' => (int)$rec['Cdrawing_ID'] ]) ?? '');
                    } catch (Exception $e) { $modelLabel = ''; }
                }
                $m['model'] = $modelLabel;
                $m['takttime'] = isset($rec['takttime']) ? (string)$rec['takttime'] : '';
            }
        } catch (Exception $e) { /* ignore */ }

        return $m;
    }

    if ($section === 'FEEDER') {
        $m = compute_from_breaks($database, 'fproduction_breaks', 'Fline_ID', $lineId, $date, $like);
        if ($m === null) $m = compute_from_record($database, 'fproduction_record', 'Fline_ID', $lineId, $date, $like);
        $m = $m ?? metrics_zero();

        // Enrich with model and takttime from latest matching record
        try {
            $rec = $database->get('fproduction_record', ['Fdrawing_ID', 'takttime'], [
                'production_date' => $date,
                'Fline_ID' => $lineId,
                'Shift[~]' => $like,
                'ORDER' => [ 'record_id' => 'DESC' ]
            ]);
            if ($rec) {
                $modelLabel = '';
                if (!empty($rec['Fdrawing_ID'])) {
                    try {
                        $modelLabel = (string)($database->get('fdrawingnumber', 'Fdrawingnum', [ 'Fdrawing_ID' => (int)$rec['Fdrawing_ID'] ]) ?? '');
                    } catch (Exception $e) { $modelLabel = ''; }
                }
                $m['model'] = $modelLabel;
                $m['takttime'] = isset($rec['takttime']) ? (string)$rec['takttime'] : '';
            }
        } catch (Exception $e) { /* ignore */ }

        return $m;
    }

    return metrics_zero();
}

function line_label($n) {
    return 'Line ' . str_pad((string)$n, 2, '0', STR_PAD_LEFT);
}

$result = [
    'success' => true,
    'date' => $date,
    'sections' => [
        'CABLE' => [],
        'FEEDER' => [],
        'USB' => []
    ]
];

// Dynamically load lines for CABLE (from `cline`)
try {
    $cableLines = $database->select('cline', ['Cline_ID','Clinenumber'], [ 'ORDER' => ['Cline_ID' => 'ASC'] ]);
    if (is_array($cableLines)) {
        foreach ($cableLines as $row) {
            $id = (int)$row['Cline_ID'];
            $label = line_label(is_numeric($row['Clinenumber']) ? (int)$row['Clinenumber'] : $id);
            $result['sections']['CABLE'][$label] = [
                'Day' => get_metrics($database, 'CABLE', $id, $date, 'Day'),
                'Night' => get_metrics($database, 'CABLE', $id, $date, 'Night')
            ];
        }
    }
} catch (Exception $e) {}

// Dynamically load lines for FEEDER (from `fline`)
try {
    $feederLines = $database->select('fline', ['Fline_ID','Flinenumber'], [ 'ORDER' => ['Fline_ID' => 'ASC'] ]);
    if (is_array($feederLines)) {
        foreach ($feederLines as $row) {
            $id = (int)$row['Fline_ID'];
            $label = line_label(is_numeric($row['Flinenumber']) ? (int)$row['Flinenumber'] : $id);
            $result['sections']['FEEDER'][$label] = [
                'Day' => get_metrics($database, 'FEEDER', $id, $date, 'Day'),
                'Night' => get_metrics($database, 'FEEDER', $id, $date, 'Night')
            ];
        }
    }
} catch (Exception $e) {}

// USB placeholder (no data yet)
for ($i = 1; $i <= 4; $i++) {
    $label = line_label($i);
    $result['sections']['USB'][$label] = [
        'Day' => metrics_zero(),
        'Night' => metrics_zero()
    ];
}

echo json_encode($result);
