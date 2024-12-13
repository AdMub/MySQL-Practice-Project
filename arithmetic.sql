USE `FUNCTION`;
delimiter //
create function sum_all_nums (
  num1 int,
  num2 int,
  num3 int
)
returns int
deterministic
begin
declare result int;
SET result = num1 + num2 + num3;
return result;
end //
Delimiter //
 
 select sum_all_nums(4,6,9)
 
 
DELIMITER $$
CREATE FUNCTION numbers(
  num INT
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE result VARCHAR(20);

  IF num % 2 = 0 THEN
    SET result = 'EVEN NUMBER';
  ELSE
    SET result = 'ODD NUMBER';
  END IF;

  RETURN result;
END $$
DELIMITER ;

SELECT numbers(56);
SELECT numbers(101);

Delimiter $$
create function show_information (
first_name varchar(255),
is_moderator boolean
)
returns varchar(255)
deterministic
begin
if first_name = "ABU" and is_moderator then
   return ('Welcome back moderator ABU!') ;
elseif first_name = 'ABU' THEN
    return ('I really thought you are a moderator...');
else
   return CONCAT('Hello ', first_name, '!') ;
  END IF;
  END $$
DELIMITER ;
SELECT show_information('Abu', 0);
SELECT show_information('Abu', false);
SELECT show_information('Abu', true);
SELECT show_information('Abu', 1);

DELIMITER $$
CREATE PROCEDURE show_information(
  IN first_name VARCHAR(255),
  IN is_moderator BOOLEAN
)
BEGIN
  IF first_name = 'ABU' AND is_moderator THEN
    SELECT 'Welcome back moderator ABU!' AS result;
  ELSEIF first_name = 'ABU' THEN
    SELECT 'I really thought you are a moderator...' AS result;
  ELSE
    SELECT CONCAT('Hello ', first_name, '!') AS result;
  END IF;
END $$
DELIMITER ;

-- Example usage
CALL show_information('John', false);
