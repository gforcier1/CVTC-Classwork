--Query 1
SELECT rp.FirstName,
       rp.LastName,
       COUNT(fr.FlightID) AS NumFlights
  FROM remotePilot AS rp
       INNER JOIN
       flightReservation AS fr USING (
           RemotePilotID
       )
 GROUP BY rp.RemotePilotID
 ORDER BY rp.LastName;

--Query 2
SELECT ft.Description AS FlightType,
       Count(fr.FlightID) AS NumFlights
  FROM flightReservation AS fr
       INNER JOIN
       flightType AS ft USING (
           TypeID
       )
 GROUP BY ft.TypeID;

--Query 3
SELECT fr.DroneID,
       m.Brand,
       m.Model,
       Count(FlightID) AS NumFlights
  FROM flightStatus AS fs
       INNER JOIN
       flightReservation AS fr USING (
           StatusID
       )
       INNER JOIN
       model AS m USING (
           TypeID
       )
 WHERE fr.StatusID = 4 OR 
       fr.StatusID = 5
 GROUP BY fr.DroneID
 ORDER BY m.Brand,
          m.Brand,
          NumFlights;

--Query 4
SELECT pg.GroupID,
       pg.Nickname,
       pg.Description,
       p.FirstName,
       p.LastName
  FROM passGroup AS pg
       INNER JOIN
       passGroupMember AS psm USING (
           GroupID
       )
       INNER JOIN
       passenger AS p USING (
           PassID
       )
 WHERE pg.GroupTypeID = 2 AND 
       pg.GroupID = 9;

--Query 5
SELECT pg.Nickname,
       pg.Description,
       COUNT(p.PassID) AS NumPassengers
  FROM passenger AS p
       INNER JOIN
       passGroupMember AS pgm USING (
           PassID
       )
       INNER JOIN
       passGroup AS pg USING (
           GroupID
       )
 GROUP BY pg.Nickname;