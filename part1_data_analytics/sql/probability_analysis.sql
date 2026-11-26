SELECT
    ROUND(
        SUM(CASE WHEN traffic_volume > 5500 THEN 1 ELSE 0 END) * 1.0
        / COUNT(*),
        4
    ) AS P_Congestion,

    ROUND(
        SUM(CASE WHEN weather_main = 'Clear' THEN 1 ELSE 0 END) * 1.0
        / COUNT(*),
        4
    ) AS P_Clear_Weather,

    ROUND(
        SUM(
            CASE
                WHEN traffic_volume > 5500
                     AND weather_main = 'Clear'
                THEN 1
                ELSE 0
            END
        ) * 1.0
        / COUNT(*),
        4
    ) AS P_Congestion_And_Clear
FROM Metro_Interstate_Traffic_Volume;