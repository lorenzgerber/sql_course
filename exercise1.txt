-- Find the code, latitude, longitude of each airport which is located in a city
-- named Paris or Berlin.
SELECT ' Query 1 ';
SELECT Code, Latitude, Longitude FROM Airport WHERE City IN ('Paris', 'Berlin');

-- Find the names of those airlines which have either a flight with origin the airport with
-- code TXL or a flight with origin the airport with code SXF.
SELECT ' Query 2 ';
SELECT DISTINCT Name
FROM   Airline
INNER JOIN Flight ON (Abbreviation=Airline)
WHERE  Origin IN ('TXL', 'SXF');

-- Find the names of those airlines which have both a flight with origin the airport with
-- code TXL and a flight with origin the airport with code SXF. (Hint: This may be done
-- without using embedded subqueries by using the INTERSECT directive. Since MySQL
-- does not support this directive, it is sufficient to give a solution which works only with
-- PostgreSQL.)
SELECT ' Query 3 ';
SELECT DISTINCT Name
FROM Airline
INNER JOIN Flight ON (Abbreviation=Airline)
WHERE Origin IN ('TXL')
INTERSECT
SELECT DISTINCT Name
FROM Airline
INNER JOIN Flight ON (Abbreviation=Airline)
WHERE Origin IN ('SXF');

-- Find the names of all airlines which have a scheduled flight on the date 2016-11-12.
SELECT ' Query 4 ';
SELECT DISTINCT Name
FROM Airline
INNER JOIN Schedule ON (Abbreviation=Airline)
WHERE Date IN ('2016-11-12');

-- Find the airport code, city, and country for all airports which have a departure for which
-- some ticket with ticket number less than 200 costs more than 4000.
SELECT ' Query 5 ';
SELECT DISTINCT Code, City, Country
FROM Airport
INNER JOIN Flight ON (Airport.Code=Flight.Origin)
INNER JOIN Ticket ON (Flight.FlightNumber=Ticket.FlightNumber)
WHERE (Ticket.Cost>4000) AND (Ticket.Number<200);

-- Find the names of those airlines which have a flight whose destination is an airport which
-- is located in Germany or France.
SELECT ' Query 6 ';
SELECT DISTINCT Name
FROM Airline
INNER JOIN Flight ON (Airline.Abbreviation=Flight.Airline)
INNER JOIN Airport ON (Flight.Destination=Airport.Code)
WHERE (Airport.Country='France') OR (Airport.Country='Germany'); 




-- Find the codes of those airports located in Berlin, Germany which do not have any
-- scheduled departures. (Hint: This may be done without using embedded subqueries by
-- using the EXCEPT directive. Since MySQL does not support this directive, it is sufficient
-- to give a solution which works only with PostgreSQL.)
SELECT ' Query 7 ';
SELECT DISTINCT Code
FROM Airport
WHERE (City='Berlin')
EXCEPT
SELECT DISTINCT Code
FROM Airport
INNER JOIN Flight ON (Airport.Code=Flight.Origin)
INNER JOIN Schedule ON (Flight.FlightNumber=Schedule.FlightNumber)
WHERE (Airport.City='Berlin');

-- Find the names of those airlines with either the string “Air” or else the string “Luft”
-- (both case insensitive) in their names.
SELECT ' Query 8 ';
SELECT DISTINCT Name
FROM Airline
WHERE UPPER(Name) LIKE UPPER ('%air%') OR UPPER(Name) LIKE UPPER('%luft%');

-- Reduce the price of all tickets issued by Scandinavian airlines for the interval 2016-11-01
-- to 2016-11-20 inclusive by 20%. (Note: You may use the code “SK” in your query. It is
-- not necessary to pattern match on “Scandinavian”)
SELECT ' Query 9 ';
UPDATE Ticket
SET Cost = Cost * 1.2
WHERE (Airline = 'SK') AND (Date >= '2016-11-01' OR Date <= '2016-11-20');

-- Find the flights for the airline with code SK which are scheduled on 2016-11-12 with a
-- departure time before noon (12:00). In addition to the flight number, give the airport
-- codes for both the origin and the destination.
SELECT ' Query 10 ';
SELECT DISTINCT F.FlightNumber, Origin, Destination
FROM Flight AS F
INNER JOIN Schedule AS S ON ((F.Airline=S.Airline)
AND (F.FlightNumber=S.FlightNumber))
WHERE (F.Airline='SK')
AND S.Date='2016-11-12'
AND S.DepartureTime < '12:00';
