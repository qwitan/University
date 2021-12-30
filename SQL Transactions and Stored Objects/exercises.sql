#EXERCISE 1 - STORED PROCEDURE

DELIMITER //
DROP PROCEDURE IF EXISTS generate_driver_statistics// 	#if the procedure exists, then the procedure is dropped
CREATE PROCEDURE generate_driver_statistics(IN year year(4), IN week tinyint(2))	#creates procedure with 2 parameters
BEGIN
 CREATE TABLE IF NOT EXISTS DRIVER_STATISTICS (	#creates table with the specified columns, if it doesnt already exist
	Year year(4), 
	Week tinyint(2), 
	idDriver int, 
	bookings_number int, 
	primary key(Year, Week, idDriver)
    );
 INSERT INTO DRIVER_STATISTICS (SELECT year, week, idDriver, COUNT(idBooking) #select ID of drivers with their number of bookings for the given year and week
								FROM Booking B 
                                LEFT JOIN Driver D ON B.Driver_idDriver = D.idDriver 
                                WHERE year = year(B.BookingTime) AND week = weekofyear(B.BookingTime) #the year and week have to be equal to the parameters
                                GROUP BY year, week, idDriver);
END//
DELIMITER ;
#CALL generate_driver_statistics(2018, 49) 	#testing the procedure	


#EXERCISE 2 - EVENT

DELIMITER //
DROP EVENT IF EXISTS exec_driver_statistics//	#drop event if it already exists
CREATE EVENT exec_driver_statistics
ON SCHEDULE EVERY 1 WEEK 	#create new event which repeats every week
STARTS '2021-11-01 00:00:00' 	#starting on Monday, 2021-11-01
DO
CALL generate_driver_statistics(year(subdate(now(), INTERVAL 1 WEEK)), weekofyear(subdate(now(), INTERVAL 1 WEEK)))//	#call the procedure, and pass the last week as a parameter (last week, because at Monday 00:00 there are no bookings for the given week)
DELIMITER ;


#EXERCISE 3 - FUNCTION

DELIMITER //
DROP FUNCTION IF EXISTS customer_class//	#drop the function if it already exists
CREATE FUNCTION customer_class(customer_ID INT) RETURNS CHAR(1) READS SQL DATA	#create function, which takes int as a parameter and returns char
BEGIN
	DECLARE customer_group CHAR(1);	#declare a variable which we return

	SELECT CASE 
		WHEN SUM(DistanceInKM) >= 0.85 * (SELECT MAX(DistanceInKM) FROM Booking) THEN 'A' # when sum of distances is bigger or equal to 85% of maximum distance, return A
		WHEN SUM(DistanceInKM) >= 1.4 * (SELECT AVG(DistanceInKM) FROM Booking) THEN 'B'  # when sum of distances is bigger or equal to 140% of average distance, return B
		ELSE 'C'	#in any other case, return C
	END AS CustomerGroup
    FROM Customer c LEFT JOIN Booking b
    ON b.Customer_idCustomer = c.idCustomer
	WHERE c.idCustomer = customer_ID	#customer ID must be equal to the ID which is passed as a parameter
    GROUP BY idCustomer
	INTO customer_group;	#inserts result into the variable 

 RETURN customer_group;	#return the variable
 END//
 DELIMITER ;