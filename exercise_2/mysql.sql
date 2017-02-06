-- 1. Find the airport with the greatest latitude.
-- In the case of a tie, list all such airports.
SELECT ' Query 1 ';
SELECT City 
FROM Airport
WHERE Latitude IN (
      SELECT MAX(Latitude)
      FROM Airport);


-- 2. Find the names of those airlines which do not
-- have flights which depart from an airport in Germany.
-- (This includes airlines which do not have any flights at all.)
SELECT ' Query 2 ';
SELECT DISTINCT Name
FROM Airline
LEFT JOIN Flight ON (Abbreviation=Airline)
LEFT JOIN Airport ON (Origin=Code)
WHERE Name NOT IN (
      SELECT Name
      FROM Airline
      JOIN Flight ON (Abbreviation=Airline)
      JOIN Airport ON (Origin=Code)
      WHERE (Country = 'Germany'));


-- 3. Find the names of those airlines which have a
-- flight whose destination airport is the same as the origin
-- airport of some flight of Lufthansa. (The query must use the
-- string ’Lufthansa’ and not the airline abbreviation LH.)
SELECT ' Query 3 ';
SELECT DISTINCT Name
FROM Airline
JOIN Flight ON (Abreviation=Airline)
JOIN Airport ON (Origin=Code)
WHERE 



-- 4. Find the names of those airports, all of whose departures
-- are international, in the precise sense that the destination
-- airport is in a different country than the airport of departure.
-- Exclude airports with no departures.
SELECT ' Query 4 ';

-- 5. Find the names of those airlines which, for every airport
-- in Germany with latitude less than 54, except possibly BER,
-- have a flight whose origin is that airport.
SELECT ' Query 5 ';

-- 6. For each airport, find the total number of distinct destinations
-- for flights which originate at that airport. List the airport code, city,
-- and country, as well as the number of distinct destinations, and sort
-- first by number of destinations and then by airport code, with the greatest
-- number of airports first. Include even airports with no flights.
-- (Hint: left outer join)
SELECT ' Query 6 ';

-- 7. For each country found in the Airport relation of the database,
-- find the maximum, minimum, and average latitude over all airports which are
-- located in that country, as well as the total number of airports
-- for each such country.
SELECT ' Query 7 ';


-- 8. Find the code, city, and country of that airport which has the
-- least positive number of distinct destinations for flights which
-- originate at that airport. (That is, the airport must have at least
-- one originating flight.) In case of a tie, list all such airports.
-- Give the number of destinations for that airport as well.
SELECT ' Query 8 ';

-- 9. Find the sum of the ticket costs for each carrier for flights
-- departing in the month of November 2016. Report 0 for those airlines
-- with no ticket sales and order from highest to lowest. (Hint: The
-- SQL directive ORDER BY n will order the result based upon the nth column.)
SELECT ' Query 9 ';

-- 10. Find the codes of those airports which are the origin for
-- flights to at least three distinct airports in France.
SELECT ' Query 10 ';

-- 11. Find the names of those airlines which have both a flight
-- with origin the airport with code TXL and a flight with origin
-- the airport with code SXF.
SELECT ' Query 11 ';

-- 12. Find the codes of those airports located in Berlin,
-- Germany which do not have any scheduled departures.
SELECT ' Query 12 ';
