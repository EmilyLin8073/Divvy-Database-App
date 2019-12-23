-- Project0502.sql
-- 2. Retrieve the number of unique bikeIDs

-- SELECT * FROM Trips
-- ORDER BY BikeID

SELECT COUNT(DISTINCT(BikeID)) As NumBikes 
FROM Trips;


SELECT COUNT(*) AS NumBikes
FROM (SELECT BikeID FROM Trips GROUP BY BikeID) T;