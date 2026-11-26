SELECT
    COUNT(*) AS total_records,
    SUM(CASE WHEN traffic_volume > 5500 THEN 1 ELSE 0 END) AS congestion_count,
    SUM(CASE
            WHEN traffic_volume > 5500
            AND weather_main = 'Clear'
            THEN 1
            ELSE 0
        END) AS congestion_and_clear,
    SUM(CASE
            WHEN traffic_volume > 5500
            AND temp > 292
            THEN 1
            ELSE 0
        END) AS congestion_and_high_temp,
    SUM(CASE WHEN weather_main = 'Clear' THEN 1 ELSE 0 END) AS clear_weather_count,
    SUM(CASE WHEN weather_main = 'Clouds' THEN 1 ELSE 0 END) AS cloudy_weather_count,
    SUM(CASE
            WHEN traffic_volume > 5500
            AND weather_main = 'Clouds'
            THEN 1
            ELSE 0
        END) AS congestion_and_cloudy
FROM Metro_Interstate_Traffic_Volume;