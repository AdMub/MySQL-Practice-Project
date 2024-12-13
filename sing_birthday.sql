USE `FUNCTION`;

DELIMITER $$
CREATE FUNCTION happy_birthday (
    birthday_name VARCHAR(255)
)
RETURNS VARCHAR(255)
deterministic
BEGIN
    DECLARE result VARCHAR(255);

    SET result = CONCAT('Happy Birthday To You', '\n');
    SET result = CONCAT(result, 'Happy Birthday To You', '\n');
    SET result = CONCAT(result, 'Happy Birthday To Dear ', birthday_name, '\n');
    SET result = CONCAT(result, 'Happy Birthday To You', '\n');

    RETURN result;
END $$
DELIMITER ;

SELECT happy_birthday('Jimlad');






   
   
   DELIMITER //
CREATE PROCEDURE sing_happy_birthday(IN person_name VARCHAR(255))
BEGIN
    SELECT 'Happy Birthday To You' AS lyric;
    SELECT 'Happy Birthday To You' AS lyric;
    SELECT CONCAT('Happy Birthday To Dear ', person_name) AS lyric;
    SELECT 'Happy Birthday To You' AS lyric;
END //
DELIMITER ;

CALL sing_happy_birthday('John');




