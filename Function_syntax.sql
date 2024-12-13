create DATABASE `FUNCTION`;
USE `FUNCTION`;
-- FUNCTIONS
// syntax
DELIMITER $$
CREATE FUNCTION function_name(
	parameter1 datatype
    parameter2 datatype
)
RETURN datatype
DETERMINISTIC
BEGIN
-- enter code for the function 
END $$

-- CREATE A FUNCTION OF bonusstatus which has one parameter salary of type char and returns varchar(20).
use the following logical operations in the statement to create function
 return 'eligible bonus' if salary > 35000
  else return 'not eligible'
  
  