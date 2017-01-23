-- Table defintions for the toy airline database schema.
-- Stephen J. Hegner 2011-09-09.
-- Updated to use TIME data type 2015-01-21.

CREATE TABLE Airport 
        (Code      CHAR(3)     NOT NULL, 
         City      VARCHAR(20) NOT NULL, 
         Country   VARCHAR(15) NOT NULL, 
         Latitude  INT, 
         Longitude INT, 
         CONSTRAINT pkey_airport PRIMARY KEY (Code));

CREATE TABLE Airline 
    (Name         VARCHAR(15)  NOT NULL, 
     Abbreviation CHAR(2)      NOT NULL, 
     HomeCountry  VARCHAR(15)  NOT NULL, 
     Website      VARCHAR(50)  NOT NULL, 
     CONSTRAINT pkey_airline PRIMARY KEY (Abbreviation)); 

CREATE TABLE Flight 
        (Airline      CHAR(2)     NOT NULL, 
         FlightNumber VARCHAR(4)  NOT NULL, 
         Origin       CHAR(3)     NOT NULL, 
         Destination  CHAR(3)     NOT NULL, 
         CONSTRAINT pkey_flight  PRIMARY KEY (Airline, FlightNumber), 
         CONSTRAINT fkey_flight1 FOREIGN KEY (Airline) 
                                 REFERENCES Airline (Abbreviation), 
         CONSTRAINT fkey_flight2 FOREIGN KEY (Origin) 
                                 REFERENCES Airport(Code), 
         CONSTRAINT fkey_flight3 FOREIGN KEY (Destination) 
                                 REFERENCES Airport(Code));

CREATE TABLE Schedule 
    (Airline       CHAR(2)     NOT NULL, 
     FlightNumber  VARCHAR(4)  NOT NULL, 
     Date          DATE, 
     DepartureTime TIME, 
     ArrivalTime   TIME, 
     CONSTRAINT pkey_schedule PRIMARY KEY (Airline, FlightNumber, Date), 
     CONSTRAINT fkey_schedule FOREIGN KEY (Airline, FlightNumber) 
                              REFERENCES Flight (Airline, FlightNumber));

CREATE TABLE Ticket 
   (Number          INT, 
    Airline CHAR(2) NOT NULL, 
    FlightNumber    VARCHAR(4)  NOT NULL, 
    Date            DATE, 
    Cost            INT, 
    CONSTRAINT pkey_ticket PRIMARY KEY (Number), 
    CONSTRAINT fkey_ticket FOREIGN KEY (Airline, FlightNumber, Date) 
                           REFERENCES Schedule(Airline, FlightNumber, Date));


