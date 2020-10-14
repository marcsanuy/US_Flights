# Entrega d'exercici de US Flights

Es modifica l'arxiu createUSFlightsSchema.sql per que no crea be la bbdd:

    DROP SCHEMA IF EXISTS USAirlineFlights2;
    CREATE DATABASE IF NOT EXISTS USAirlineFlights2;
    use USAirlineFlights2;

    CREATE TABLE IF NOT EXISTS USAirports (
	    IATA			VARCHAR(32) NOT NULL PRIMARY KEY,
	    Airport			VARCHAR(80),
	    City			VARCHAR(32),
	    State			VARCHAR(32),
	    Country			VARCHAR(32),
	    Latitude		FLOAT,
	    Longitude		FLOAT);
    
    CREATE TABLE IF NOT EXISTS Carriers (
	    CarrierCode		VARCHAR(32) NOT NULL PRIMARY KEY,
	    Description		VARCHAR(120)
    );

    CREATE TABLE IF NOT EXISTS Flights(
	    flightID		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	    colYear			SMALLINT,
	    colMonth		SMALLINT,
        DayOfMonths		SMALLINT,
	    DayOfWeek		SMALLINT,
	    DepTime			SMALLINT,
	    CRSDepTime		SMALLINT,
	    ArrTime			SMALLINT,
	    CRSArrTime		SMALLINT,
	    UniqueCarrier	VARCHAR(32),
	    FlightNum		VARCHAR(32),
	    TailNum			VARCHAR(32),
	    ActualElapsedTime SMALLINT,
	    CRSElapsedTime	SMALLINT,
	    AirTime			SMALLINT,
	    ArrDelay		SMALLINT,
	    DepDelay		SMALLINT,
	    Origin			VARCHAR(32),
	    Dest			VARCHAR(32),
	    Distance		SMALLINT,
	    TaxiIn			SMALLINT,
	    TaxiOut			SMALLINT,
	    Cancelled		BOOLEAN,
	    CancellationCode VARCHAR(32),
	    Diverted		BOOLEAN,
        CarrierDelay    SMALLINT,
        WheaterDelay    SMALLINT,
        NASDelay        SMALLINT,
        SecurityDelay   SMALLINT,
        LateAircraftDelay SMALLINT
    );

Relacions:

	FOREIGN KEY (Dest)
		REFERENCES USAirports (IATA),
        
	FOREIGN KEY (Origin)
		REFERENCES USAirports (IATA),
        
	FOREIGN KEY (UniqueCarrier)
		REFERENCES Carriers (CarrierCode)

Al donar problemes per importar les dades dels fitxers he creat les relacions posteriorment am phpmyadmind i l'entorn grafic


EXERCICIS-------------------------------------------------------------------------------------------------------------------

1:
	SELECT count(*) FROM flights

2:
	SELECT Origin, AVG(ArrDelay) 
	AS prom_arribades, 
	AVG(DepDelay) 
	AS prom_sortides 
	FROM flights GROUP BY Origin

3:
	SELECT Origin, colYear, colMonth, AVG(ArrDelay) 
	AS prom_arribades 
	FROM flights 
	GROUP BY Origin ASC, colYear ASC, colMonth ASC


4:
	SELECT City, colYear, colMonth, AVG(ArrDelay) 
	AS prom_arribades 
	FROM flights 
	INNER JOIN usairports
	ON Origin = IATA
	GROUP BY City ASC, colYear ASC, colMonth ASC

5: 
	SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) 
	AS total_cancelled
	FROM flights
	GROUP BY UniqueCarrier, colYear, colMonth
	ORDER BY total_cancelled DESC;	

6:
	SELECT TailNum, SUM(Distance) AS totalDistance
	FROM flights
	GROUP BY TailNum
	ORDER BY SUM(Distance) DESC
	LIMIT 10;
