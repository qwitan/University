<?php
query("
    CREATE USER 'sec_dbuser'@'localhost'
    IDENTIFIED BY '4Fa98xkHVd2XmnfK'
    ");

query("
    GRANT SELECT
    ON taxi.*
    TO 'sec_dbuser'@'localhost'
    ");

query("
    FLUSH PRIVILEGES
    ");