USE `FUNCTION`;
-- CREATE A FUNCTION OF bonusstatus which has one parameter salary of type char and returns varchar(20).
use the following logical operations in the statement to create function
 return 'eligible bonus' if salary > 35000
  else return 'not eligible'
  
  Delimiter $$
  create function bonusstatus(
      salary varchar(20)
	)
    returns varchar(20)
    deterministic
    begin
		if salary > 35000 then
            return ('ELIGIBLE BONUS');
		else 
            return ('NOT ELIGIBLE');
	end if;
    end $$
     Delimiter $$
     
     select bonusstatus(90000);
    
    SELECT * FROM football.players;
    select player_id,name,last_season,current_club_id,country_of_birth,city_of_birth,country_of_citizenship,date_of_birth,sub_position,position,foot,height_in_cm,bonusstatus(highest_market_value_in_eur), agent_name,current_club_domestic_competition_id, current_club_name FROM football.players;
    SELECT * FROM football.player_valuations;
    select player_id,bonusstatus(market_value_in_eur),current_club_id, player_club_domestic_competition_id from football.player_valuations;
    SELECT * FROM practice_4.Players;
    select ID, NUMBER, NAME, AGE, CLUB, COUNTRY,bonusstatus(SALARY) FROM Practice_4.Players;
    SELECT * FROM mercedes_benz.order;
    SELECT `ORDER ID`,`CUSTOMER ID`, `PURCHASE DATE`,`QUANTITY`, BONUSSTATUS(`PRICE`) FROM mercedes_benz.order;