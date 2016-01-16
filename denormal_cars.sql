CREATE USER denormal_user;

CREATE DATABASE denormal_cars OWNER denormal_user;

-- SELECT *
-- FROM car_models;

-- SELECT DISTINCT make_title
-- FROM car_models
-- ORDER BY make_title ASC;

-- SELECT DISTINCT model_title
-- FROM car_models
-- WHERE make_code LIKE '%VOLKS%';

-- SELECT make_code, model_code, model_title, year
-- FROM car_models[]
-- WHERE make_code LIKE '%LAM%';

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;


-- CREATE TABLE year (
-- ID SERIAL PRIMARY KEY NOT NULL,
-- year INT DEFAULT NOT NULL
-- );

-- CREATE TABLE make_code (
-- ID SERIAL PRIMARY KEY NOT NULL,
-- make_code character varying(50), 
-- make_title_id INT references make_title(ID),
-- year_id INT references year(ID)
-- );

-- CREATE TABLE make_title (
-- ID SERIAL PRIMARY KEY NOT NULL,
-- make_title character varying(20) DEFAULT NULL,
-- model_code_id INT references model_code(ID),
-- year_id INT references year(ID)
-- );

-- CREATE TABLE model_code (
-- ID SERIAL PRIMARY KEY NOT NULL,
-- model_code character varying(50) DEFAULT NULL,
-- model_title_id INT references model_title(ID),
-- year_id INT references year(ID)
-- );

-- CREATE TABLE model_title (
-- ID SERIAL PRIMARY KEY NOT NULL,
-- model_title character varying(50),
-- make_code_id INT references make_code(ID),
-- model_code_id INT references model_code(ID),
-- year_id INT references year(ID)
-- );


