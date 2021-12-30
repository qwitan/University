CREATE USER 'sec_dbuser'@'localhost'        --create new user with a given username and password
IDENTIFIED BY '4Fa98xkHVd2XmnfK';

GRANT SELECT                                --grant permission to specific DB to a given user
ON user01_taxi.*
TO 'sec_dbuser'@'localhost';

FLUSH PRIVILEGES;                           --refresh the privileges
