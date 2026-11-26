WITH median_calc AS (
    SELECT AVG(traffic_volume) AS median_value
    FROM (
        SELECT traffic_volume
        FROM Metro_Interstate_Traffic_Volume
        ORDER BY traffic_volume
        LIMIT 2 - (
            SELECT COUNT(*) 
            FROM Metro_Interstate_Traffic_Volume
        ) % 2
        OFFSET (
            SELECT (COUNT(*) - 1) / 2
            FROM Metro_Interstate_Traffic_Volume
        )
    )
)
SELECT
    ROUND(AVG(traffic_volume), 2) AS mean,
    (SELECT median_value FROM median_calc) AS median,
    MIN(traffic_volume) AS min_value,
    MAX(traffic_volume) AS max_value,
    MAX(traffic_volume) - MIN(traffic_volume) AS range,
    ROUND(
        AVG(
            (traffic_volume -
                (SELECT AVG(traffic_volume)
                 FROM Metro_Interstate_Traffic_Volume)
            ) *
            (traffic_volume -
                (SELECT AVG(traffic_volume)
                 FROM Metro_Interstate_Traffic_Volume)
            )
        ), 2
    ) AS variance,
    ROUND(
        SQRT(
            AVG(
                (traffic_volume -
                    (SELECT AVG(traffic_volume)
                     FROM Metro_Interstate_Traffic_Volume)
                ) *
                (traffic_volume -
                    (SELECT AVG(traffic_volume)
                     FROM Metro_Interstate_Traffic_Volume)
                )
            )
        ), 2
    ) AS standard_deviation
FROM Metro_Interstate_Traffic_Volume;
