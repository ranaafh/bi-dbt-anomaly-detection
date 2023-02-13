

SELECT MIN(time_stamps) AS strt_time, app_event
FROM `ld-snowplow`.`dbt_anomaly_detection`.`all_agg_derived_cutoff`
GROUP BY app_event
HAVING DATE(MIN(time_stamps)) < DATE_SUB("2023-02-09", INTERVAL 30 DAY)
ORDER BY strt_time