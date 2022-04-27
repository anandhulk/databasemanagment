DELIMITER //
DROP procedure if exists FACT //
CREATE PROCEDURE FACT()
BEGIN
DECLARE a INT;
DECLARE fact INT;
SET a=3;
SET fact=1;
label: WHILE(a>0) DO
SET fact=fact*a;
SET a=a-1;
END WHILE label;
SELECT CONCAT(fact,' is the factorial');
END //
DELIMITER ;
CALL FACT();