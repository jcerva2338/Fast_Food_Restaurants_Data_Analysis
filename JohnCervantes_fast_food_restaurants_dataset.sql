-- See the layout of the dataset and the data available
SELECT TOP 3 * FROM FastFoodRestaurants$;

SELECT name, COUNT(*) AS frequency FROM FastFoodRestaurants$ GROUP BY name ORDER BY frequency DESC;

SELECT province, name, COUNT(*) as "count" FROM FastFoodRestaurants$ GROUP BY province, name ORDER BY province ASC, name ASC, "count" DESC;

SELECT province, COUNT(*) as "count" FROM FastFoodRestaurants$ GROUP BY province ORDER BY "count" DESC;

-- Perform data cleaning to make sure that the naming of restaurants of focus
-- that will be used with the Kaggle dataset: https://www.kaggle.com/datasets/iamsouravbanerjee/top-50-fastfood-chains-in-usa
-- are similar so that the data follows the same format

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%c%onald%';
UPDATE FastFoodRestaurants$ SET name = 'McDonald''s' WHERE name LIKE '%c%onald%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Arby%';
UPDATE FastFoodRestaurants$ SET name = 'Arby''s' WHERE name LIKE 'Arby%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Carl%';
UPDATE FastFoodRestaurants$ SET name = 'Carl''s' WHERE name LIKE 'Carl%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Checker%';
UPDATE FastFoodRestaurants$ SET name = 'Checkers/Rally''s' WHERE name LIKE 'Checker%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Chick-fil-%';
UPDATE FastFoodRestaurants$ SET name = 'Chick-fil-A' WHERE name LIKE 'Chick-fil-%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Chipotle%';
UPDATE FastFoodRestaurants$ SET name = 'Chipotle' WHERE name LIKE 'Chipotle Mexican Grill';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Culver%';
UPDATE FastFoodRestaurants$ SET name = 'Culver''s' WHERE name LIKE 'Culver%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Dairy Queen%';
UPDATE FastFoodRestaurants$ SET name = 'Dairy Queen' WHERE name LIKE 'Dairy Queen%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Domino%';
UPDATE FastFoodRestaurants$ SET name = 'Domino''s' WHERE name LIKE 'Domino%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Dunkin%';
UPDATE FastFoodRestaurants$ SET name = 'Dunkin''' WHERE name LIKE 'Dunkin%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Hardee%';
UPDATE FastFoodRestaurants$ SET name = 'Hardee''s' WHERE name LIKE '%Hardee%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Jimmy%';
UPDATE FastFoodRestaurants$ SET name = 'Jimmy John''s' WHERE name LIKE '%Jimmy%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'KFC - %';
UPDATE FastFoodRestaurants$ SET name = 'KFC' WHERE name LIKE 'KFC - %';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Little Caesar%';
UPDATE FastFoodRestaurants$ SET name = 'Little Caesars' WHERE name LIKE '%Little Caesar%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%McAlister%';
UPDATE FastFoodRestaurants$ SET name = 'McAlister''s Deli' WHERE name LIKE '%McAlister%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Panda%';

-- Look at the entry where the name of the restaurant is 'Panda' to ensure whether or not it is Panda Express,
-- after conducting the query, it is a Panda Express
SELECT * FROM FastFoodRestaurants$ WHERE name = 'Panda';

UPDATE FastFoodRestaurants$ SET name = 'Panda Express' WHERE name LIKE '%Panda%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Papa John%';
UPDATE FastFoodRestaurants$ SET name = 'Papa Johns' WHERE name LIKE '%Papa John%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE 'Pizza Hut%';
UPDATE FastFoodRestaurants$ SET name = 'Pizza Hut' WHERE name LIKE 'Pizza Hut%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Popeye%';
UPDATE FastFoodRestaurants$ SET name = 'Popeyes Louisiana Kitchen' WHERE name LIKE '%Popeye%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%QDOBA%';
UPDATE FastFoodRestaurants$ SET name = 'QDOBA' WHERE name LIKE '%QDOBA%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Raising Cane%';
UPDATE FastFoodRestaurants$ SET name = 'Raising Cane''s' WHERE name LIKE '%Raising Cane%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Sonic%';
UPDATE FastFoodRestaurants$ SET name = 'Sonic Drive-In' WHERE name LIKE '%Sonic%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Subway%';
UPDATE FastFoodRestaurants$ SET name = 'Subway' WHERE name LIKE '%Subway%';

SELECT DISTINCT(name) FROM FastFoodRestaurants$ WHERE name LIKE '%Wendy%';

-- Perform a search to confirm that the entry with the name 'Wendy Two Two Eight' is a Wendy's
-- after performing the query, it is a Wendy's
SELECT * FROM FastFoodRestaurants$ WHERE name = 'Wendy Two Two Eight';

UPDATE FastFoodRestaurants$ SET name = 'Wendy''s' WHERE name LIKE '%Wendy%';

SELECT name, COUNT(*) AS frequency FROM FastFoodRestaurants$ GROUP BY name ORDER BY frequency DESC;

SELECT province, name, COUNT(*) as "count" FROM FastFoodRestaurants$ GROUP BY province, name ORDER BY province ASC, name ASC, "count" DESC;

SELECT province, COUNT(*) as "count" FROM FastFoodRestaurants$ GROUP BY province ORDER BY "count" DESC;

SELECT TOP 10 * FROM FastFoodRestaurants$;

SELECT name, city, province, country, latitude, longitude FROM FastFoodRestaurants$;

SELECT COUNT(*) FROM FastFoodRestaurants$ WHERE name LIKE '%Dunkin%' GROUP BY name;
