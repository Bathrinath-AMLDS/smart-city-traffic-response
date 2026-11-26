-- SQLite analysis for Part 1

-- Import in sqlite3 CLI:
-- mode csv
-- import ../../data/raw/Metro_Interstate_Traffic_Volume.csv Metro_Interstate_Traffic_Volume


-- Verify that the data has been loaded correctly. 

select count(*) from Metro_Interstate_Traffic_Volume;

-- Analyse annual traffic trends
SELECT
    strftime('%Y', date_time) AS year,
    SUM(traffic_volume) AS total_traffic_volume
FROM Metro_Interstate_Traffic_Volume
WHERE strftime('%Y', date_time) BETWEEN '2012' AND '2017'
GROUP BY year
ORDER BY year;


-- Calculate Year to year changes
WITH yearly_traffic AS (
    SELECT
        strftime('%Y', date_time) AS year,
        SUM(traffic_volume) AS total_traffic_volume
    FROM Metro_Interstate_Traffic_Volume
    WHERE strftime('%Y', date_time) BETWEEN '2012' AND '2017'
    GROUP BY year
)
SELECT
    year,
    total_traffic_volume,
    total_traffic_volume -
    LAG(total_traffic_volume) OVER (ORDER BY year) AS annual_change
FROM yearly_traffic;


-- Determine Increase and Decrease 
WITH yearly_traffic AS (
    SELECT
        strftime('%Y', date_time) AS year,
        SUM(traffic_volume) AS total_traffic_volume
    FROM Metro_Interstate_Traffic_Volume
    GROUP BY year
)
SELECT
    year,
    total_traffic_volume,
    total_traffic_volume -
    LAG(total_traffic_volume) OVER (ORDER BY year) AS annual_change,
    CASE
        WHEN total_traffic_volume >
             LAG(total_traffic_volume) OVER (ORDER BY year)
             THEN 'Increase'
        WHEN total_traffic_volume <
             LAG(total_traffic_volume) OVER (ORDER BY year)
             THEN 'Decrease'
        ELSE 'No Change'
    END AS trend
FROM yearly_traffic
WHERE year BETWEEN '2012' AND '2017';


-- Analyse temperature around holidays

SELECT
    strftime('%Y', date_time) AS year,
    holiday,
    ROUND(AVG(temp), 2) AS avg_temp_kelvin,
    ROUND(AVG(temp - 273.15), 2) AS avg_temp_celsius,
    ROUND(AVG(traffic_volume), 0) AS avg_traffic_volume
FROM Metro_Interstate_Traffic_Volume
WHERE holiday IN ('New Years Day', 'Labor Day')
AND strftime('%Y', date_time) IN ('2015','2016','2017')
GROUP BY year, holiday
ORDER BY holiday, year;

