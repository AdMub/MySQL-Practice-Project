SELECT * FROM football.club;

-- ROUND()
SELECT Round(average_age, 0) from football.club;
SELECT name, average_age, Round(average_age, 0) from football.club;