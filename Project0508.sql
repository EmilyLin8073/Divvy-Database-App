-- Project0508.sql
-- 8. For each hour of the day, list the percentage of bikes checked out during 
-- that hour relative to the other hours of the day.

SELECT StartingHour, 100.0*COUNT(StartingHour) / (SELECT COUNT(*) FROM Trips) AS Percentage
FROM Trips
GROUP BY StartingHour
ORDER BY StartingHour ASC

--SELECT * FROM Trips ORDER BY StartingHour ASC

