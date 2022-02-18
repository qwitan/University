# Databases - SQL
SQL Assignments

_________________________________________________________________________________________________________________________________________________________

# Monitered Assignment
-----------------------------

A database consisting of tables MAP, CITY, and ROAD is already available (owned by [retracted]). 

        MAP (ID, Name)
        CITY (MapID, ID, Name, PosX, PosY)
        ROAD (MapID, IDfrom, IDto, Distance)

- Every city ID is only valid and unique together with its map ID. Roads are stored twice (once in 
  each direction) but should be considered only once.
  
- Java class MapReport (no package designation) containing a Java/JDBC main method 
  which opens the database using account "retracted", retrieves data and writes a report on all maps found in the database 
  to the console, and finally closes the database. Important aspects of a map are:

        its name and ID
        the number of cities
        the number of roads
        the average road length 
        the two cities connected by the longest road and its distance

For each map found, the information retrieved is formatted like the following:
------------

        Map <<MapName>> (<<Id>>):
        Cities: <<Number>>
        Roads: <<Number>>
        Average Road Length: <<Number>> km
        The longest road runs from <<CityName>> to <<CityName>> - length: <<Number>> km

------------
Output 
------------
        Map Simple (2):
        Cities: 3
        Roads: 3
        Average Road Length: 56 km
        The longest road runs from City-2 to City-3 - length: 80 km

_________________________________________________________________________________________________________________________________________________________
