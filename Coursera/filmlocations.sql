SELECT * FROM coursera.filmlocations;
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer="James Cameron";
SELECT DISTINCT Title FROM FilmLocations;
SELECT COUNT(DISTINCT `Release Year`) FROM FilmLocations WHERE 'Production Company'="Warner Bros. Pictures";
-- retrieve 15 rows from the table starting from row 11.
SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;
-- Retrieve the number of locations of the films which are directed by Woody Allen.
select count(Locations) FROM FilmLocations where Director="Woody Allen";
-- Retrieve the number of films shot at Russian Hill.
SELECT Count(Title) FROM FilmLocations WHERE Locations="Russian Hill";
-- Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.
SELECT Count(*) FROM FilmLocations WHERE `Release Year`<1950;
-- Retrieve the names of all unique films released in the 21st century and onwards, along with their release years.
SELECT DISTINCT Title, `Release Year` FROM FilmLocations WHERE `Release Year`>=2001;
-- Retrieve the directors' names and their distinct films shot at City Hall.
SELECT DISTINCT Title, Director FROM FilmLocations WHERE Locations="City Hall";
-- Retrieve the number of distributors who distributed films with the 1st actor, Clint Eastwood.
 SELECT COUNT(DISTINCT Distributor) FROM FilmLocations WHERE Actor1="Clint Eastwood"; 
 -- Retrieve the names of the first 50 films.
 SELECT DISTINCT Title FROM FilmLocations LIMIT 50;
 -- Retrieve the first 10 film names released in 2015.
 SELECT DISTINCT Title FROM FilmLocations WHERE `Release Year`=2015 LIMIT 10;
 -- Retrieve the next 3 film names that follow after the first 5 films released in 2015.
 SELECT DISTINCT Title FROM FilmLocations WHERE `Release Year`=2015 LIMIT 3 OFFSET 5;
 
