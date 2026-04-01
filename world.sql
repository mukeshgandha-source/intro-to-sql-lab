DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS countrylanguage;

CREATE TABLE country (
    code character(3) NOT NULL,
    name text NOT NULL,
    continent text NOT NULL,
    region text NOT NULL,
    surfacearea real NOT NULL,
    indepyear integer,
    population integer NOT NULL,
    lifeexpectancy real,
    gnp numeric(10,2),
    gnpold numeric(10,2),
    localname text NOT NULL,
    governmentform text NOT NULL,
    headofstate text,
    capital integer,
    code2 character(2) NOT NULL
);

-- Copying some data for you to test
INSERT INTO country VALUES ('AFG','Afghanistan','Asia','Southern and Central Asia',652090,1919,22720000,45.9,5976.00,NULL,'Afganistan/Afqanestan','Republic','Mohammad Omar',1,'AF');
INSERT INTO country VALUES ('NLD','Netherlands','Europe','Western Europe',41526,1581,15864000,78.3,371362.00,360478.00,'Nederland','Constitutional Monarchy','Beatrix',5,'NL');
INSERT INTO country VALUES ('ANT','Netherlands Antilles','North America','Caribbean',800,NULL,217000,74.7,1941.00,NULL,'Nederlandse Antillen','Nonmetropolitan Territory of The Netherlands','Beatrix',33,'AN');
INSERT INTO country VALUES ('ALB','Albania','Europe','Southern Europe',28748,1912,3401200,71.6,3205.00,2500.00,'Shqipëria','Republic','Rexhep Mejdani',34,'AL');
INSERT INTO country VALUES ('DZA','Algeria','Africa','Northern Africa',2381741,1962,31471000,69.7,49982.00,46966.00,'Al-Jaza’ir/Algérie','Republic','Abdelaziz Bouteflika',35,'DZ');
-- Add this specific one for your first clue
INSERT INTO country VALUES ('BRA', 'Brazil', 'South America', 'South America', 8547403, 1822, 170115000, 62.9, 776739.00, 804108.00, 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR');
INSERT INTO country VALUES ('GUY', 'Guyana', 'South America', 'South America', 214969, 1966, 861000, 64.0, 722.00, 747.00, 'Guyana', 'Republic', 'Bharrat Jagdeo', 928, 'GY');

-- Create City Table
CREATE TABLE city (
    id integer NOT NULL,
    name text NOT NULL,
    countrycode character(3) NOT NULL,
    district text NOT NULL,
    population integer NOT NULL
);

-- Sample City Data
INSERT INTO city VALUES (1,'Kabul','AFG','Kabol',1780000);
INSERT INTO city VALUES (5,'Amsterdam','NLD','Noord-Holland',731200);
INSERT INTO city VALUES (34,'Tirana','ALB','Tirana',270000);

-- Create CountryLanguage Table
CREATE TABLE countrylanguage (
    countrycode character(3) NOT NULL,
    language text NOT NULL,
    isofficial boolean NOT NULL,
    percentage real NOT NULL
);

-- Sample Language Data
INSERT INTO countrylanguage VALUES ('AFG','Pashto','t',52.4);
INSERT INTO countrylanguage VALUES ('NLD','Dutch','t',95.6);
INSERT INTO countrylanguage VALUES ('ALB','Albaniana','t',97.9);

-- Adding the actual target country for Clue #1
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold, localname, governmentform, headofstate, capital, code2) 
VALUES ('VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.4, 1929, 1000, NULL, 9.00, NULL, 'Santa Sede/Città del Vaticano', 'Independent Church State', 'Johannes Paul II', 3538, 'VA');

-- Adding the specific country from the lab (South America, 37587 population)
INSERT INTO country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold, localname, governmentform, headofstate, capital, code2) 
VALUES ('FLK', 'Falkland Islands', 'South America', 'South America', 12173, NULL, 37587, NULL, 0.00, NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK');

-- Adding the capital city for that country
INSERT INTO city VALUES (763, 'Stanley', 'FLK', 'Falkland Islands', 2000);