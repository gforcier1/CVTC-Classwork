--Query 1
SELECT fr.FlightID,
       p.PassID,
       p.FirstName,
       p.LastName
  FROM flightReservation AS fr
       INNER JOIN
       manifestPassenger USING (
           FlightID
       )
       INNER JOIN
       passenger AS p USING (
           PassID
       )
 WHERE fr.FlightID = 79
 ORDER BY p.LastName;
 
-- Query 2
SELECT mp.FlightID,
       fr.PickUpTime,
       fr.CostPerMile,
       ROUND(SUM(mp.SeatPrice), 2) AS TotalSeatPrice
  FROM flightReservation AS fr
       INNER JOIN
       manifestPassenger AS mp USING (
           FlightID
       )
 GROUP BY fr.FlightID
 ORDER BY TotalSeatPrice DESC;
 
-- Query 3
SELECT fr.FlightID,
       p.FirstName || p.LastName AS Name,
       mp.SeatPrice,
       fr.PickUpTime
  FROM flightReservation AS FR
       INNER JOIN
       manifestPassenger AS mp USING (
           FlightID
       )
       INNER JOIN
       passenger AS p USING (
           PassID
       )
 WHERE p.FirstName = 'Cody' AND 
       p.LastName = 'Black'
 ORDER BY fr.PickUpTime;
 
-- Query 4
SELECT fr.FlightID,
       fr.PickUpTime,
       fr.ActDropOffTime,
       p.PackageID,
       p.Length,
       p.Width,
       p.Height,
       p.Weight
  FROM flightReservation AS fr
       INNER JOIN
       manifestPackage AS mp USING (
           FlightID
       )
       INNER JOIN
       package AS p USING (
           PackageID
       )
 WHERE fr.FlightID = 10;
 
-- Query 5
SELECT d.DroneID,
       d.Color,
       m.Model,
       m.Description,
       d.AddedOn
  FROM drone AS d
       RIGHT JOIN
       model AS m USING (
           ModelID
       )
 ORDER BY m.Model;
 
-- Query 6
-- I did end up changing the table name from PilotID to RemotePilotID when we created this table
SELECT rp.LastName,
       rp.FirstName,
       fr.FlightID
  FROM flightReservation AS fr
       INNER JOIN
       remotePilot AS rp USING (
           RemotePilotID
       )
 ORDER BY rp.LastName,
          rp.FirstName,
          fr.FlightID;
          
-- Query 7
SELECT fr.FlightID,
       fr.PickUpTime,
       fr.EstDropOffTime,
       fr.PickUpLat,
       fr.PickUpLong,
       fr.DropOffLat,
       fr.DropOffLong,
       fr.CostPerMile,
       ft.Description AS Type,
       fs.Description AS Status,
       rp.FirstName,
       rp.LastName
  FROM flightReservation AS fr
       INNER JOIN
       flightType AS ft USING (
           TypeID
       )
       INNER JOIN
       flightStatus AS fs USING (
           StatusID
       )
       INNER JOIN
       remotePilot AS rp USING (
           RemotePilotID
       )
 WHERE fr.FlightID = 78;