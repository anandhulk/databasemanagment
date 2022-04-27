use employee;

DELIMITER //
CREATE PROCEDURE addnum()
BEGIN
DECLARE a INT;
DECLARE b INT;
DECLARE c INT;
SET a=10;
SET b=20;
SET c=a+b;
SELECT concat('SUM= ',c);
END //
DELIMITER ;
CALL addnum();