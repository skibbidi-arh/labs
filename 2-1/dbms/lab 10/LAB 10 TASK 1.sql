
DROP FUNCTION get_name_id;
DROP FUNCTION PRODUCT;

DELIMITER //
CREATE FUNCTION  get_name_id()
RETURNS VARCHAR(100)
DETERMINISTIC
NO SQL
BEGIN
    RETURN CONCAT('ID: ', '220042153', ', Name: ', 'ARHAM APON');
END //

SELECT get_name_id();



DELIMITTER //
CREATE FUNCTION product(A INT, B INT)
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN 
RETURN A*B;
END //


SELECT product(10,5);


DROP FUNCTION is_whole_number;

DELIMITER //
CREATE FUNCTION is_whole_number(n DOUBLE)
RETURNS VARCHAR(20)
DETERMINISTIC
NO SQL
BEGIN
DECLARE ni INT;
SET ni = n;
    IF ((n-ni) = 0) THEN
        RETURN 'Whole Number';
    ELSE
        RETURN 'Fraction';
    END IF;
END //
DELIMITER ;

SELECT is_whole_number(4); 

