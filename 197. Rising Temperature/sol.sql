SELECT a.id
FROM Weather as a
LEFT JOIN Weather as b
ON a.recordDate = DATE_ADD(b.recordDate, INTERVAL 1 DAY)
WHERE a.temperature > b.temperature