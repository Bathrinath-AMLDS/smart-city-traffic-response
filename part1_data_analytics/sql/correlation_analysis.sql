SELECT
(
    AVG(temp * traffic_volume)
    - AVG(temp) * AVG(traffic_volume)
)
/
(
    SQRT(
        AVG(temp * temp)
        - AVG(temp) * AVG(temp)
    )
    *
    SQRT(
        AVG(traffic_volume * traffic_volume)
        - AVG(traffic_volume) * AVG(traffic_volume)
    )
) AS correlation_coefficient
FROM Metro_Interstate_Traffic_Volume;