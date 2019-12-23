-- Project0510.sql
-- 10.	Compute for each trip the average speed of the bicyclist, by taking the 
--  distance travelled computed in the previous question (which is in miles) and 
--  divide by the length in hours (the length is stored in seconds).  For the 10 
--  fastest trips, return the trip ID, bike ID, and the speed as mph.

SELECT TOP 10 T.TripID, T.BikeID, 
((SQRT(SQUARE(69 * (S1.Latitude - S2.Latitude)) + SQUARE(52 * (S1.Longitude - S2.Longitude)))) / NULLIF(T.TripDuration / 3600.0, 0)) AS mph
FROM Trips AS T, Stations AS S1, Stations AS S2
WHERE T.FromStation = S1.StationID
AND T.ToStation = S2.StationID
ORDER BY mph DESC


--SELECT TripID, TripDuration FROM Trips