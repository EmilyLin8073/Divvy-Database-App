-- Project0504.sql
-- 4. For each StationID, retrieve the number of trips taken 
-- from that station and to that station (as separate values).

-- SELECT TOP 20 * FROM Stations
-- ORDER BY StationID;
-- SELECT TOP 20 * FROM Trips
-- ORDER BY ToStation


SELECT TOP 10 StationID, 
(SELECT COUNT(FromStation) FROM Trips WHERE Stations.StationID = Trips.FromStation) AS NumTripsFrom, 
(SELECT COUNT(ToStation) FROM Trips WHERE Stations.StationID = Trips.ToStation) AS NumTripsTo
FROM Trips, Stations
GROUP BY StationID
ORDER BY ((SELECT COUNT(FromStation) FROM Trips WHERE Stations.StationID = Trips.FromStation) + 
          (SELECT COUNT(ToStation) FROM Trips WHERE Stations.StationID = Trips.ToStation)) DESC