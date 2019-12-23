-- Project0509.sql
-- 9. The station contains a location as latitude and longitude.  Compute for 
--  each trip the distance covered by that trip, using the following equation to 
--  approximate: sqrt( (69 miles * difference in latitude)^2 + (52 miles * 
--  difference in longitude)^2 ). For this computation, use the SQRT function and 
--  SQUARE function in SQL. For the 10 longest trips, return the trip ID, 
--  starting station ID, ending station ID, and distance travelled as Distance.

-- SELECT * FROM Stations
-- SELECT * FROM Trips

SELECT TOP 10 T.TripID, T.FromStation , T.ToStation, 
(SQRT(SQUARE(69 * (S1.Latitude - S2.Latitude)) + SQUARE(52 * (S1.Longitude - S2.Longitude)))) AS Distance
FROM Trips AS T, Stations AS S1, Stations AS S2
WHERE T.FromStation = S1.StationID
AND T.ToStation = S2.StationID
ORDER BY Distance DESC


-- SELECT TOP 10 T.FromStation , T.ToStation, S1.StationID, S1.Latitude, S1.Longitude, S2.StationID, S2.Latitude, S2.Longitude
-- FROM Trips AS T, Stations AS S1, Stations AS S2
-- WHERE T.FromStation = S1.StationID 
-- AND T.ToStation = S2.StationID

