SET FOREIGN_KEY_CHECKS = 0;

  SET UNIQUE_CHECKS = 0;

 

LOAD DATA INFILE '/var/lib/mysql-files/csv/%FILENAME%' IGNORE

    INTO TABLE my_target_table

    FIELDS TERMINATED BY ','

    ENCLOSED BY '"'

    LINES TERMINATED BY '\n'

    (column1,column2,column3 ...);

    

  SET UNIQUE_CHECKS = 1;

  SET FOREIGN_KEY_CHECKS = 1;