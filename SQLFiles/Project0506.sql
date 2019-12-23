-- Project0506.sql
-- 6. For each age group (year) among customers, list the average 
-- ride duration among all trips customers of that age group took.

SELECT TOP 10 (2019 - BirthYear) AS Age, (SUM(TripDuration))/(COUNT(TripDuration)) AS AverageTripDurationPerAgeGroup
FROM Trips
INNER JOIN Users
On Trips.UserID = Users.UserID
GROUP BY BirthYear 
ORDER BY AverageTripDurationPerAgeGroup DESC


SELECT TOP 10 YEAR(GETDATE()) - BirthYear AS Age, AVG(TripDuration) AS AverageTripDurationPerAgeGroup
FROM Trips, Users
WHERE Trips.UserID = Users.UserID
GROUP BY Users.BirthYear
ORDER BY AVG(TripDuration) DESC;


