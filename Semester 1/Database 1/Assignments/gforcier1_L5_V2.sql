--Query 1
SELECT DroneID,
       ROUND(AVG(CostPerMile), 2) AS AvgCostPerMile
  FROM flightReservation
 WHERE StatusID = '5'
 GROUP BY DroneID
 ORDER BY AvgCostPerMile;
 
-- Query 2
SELECT *
  FROM flightReservation
 GROUP BY FlightID
 ORDER BY DropOffLat DESC
 LIMIT 3;
 
-- Query 3
SELECT State,
       COUNT(PassID) AS NumPassengers
  FROM passenger
 GROUP BY State;
 
-- Query 4
SELECT MIN(TopSpeed) AS Slowest,
       AVG(TopSpeed) AS Average,
       MAX(TopSpeed) AS Fastest
  FROM model
 WHERE TypeID = '1';
 
-- Query 5
SELECT FlightID,
       COUNT(PassID) AS PassCount
  FROM manifestPassenger
 GROUP BY FlightID
 ORDER BY PassCount DESC;
