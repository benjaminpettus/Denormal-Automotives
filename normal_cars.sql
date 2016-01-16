CREATE USER normal_user;

CREATE DATABASE normal_cars OWNER normal_user;

DROP TABLE model;
DROP TABLE make;
DROP TABLE model_year;

CREATE TABLE model_year (
ID SERIAL PRIMARY KEY NOT NULL,
year INT NOT NULL
);

INSERT INTO model_year (year)
SELECT DISTINCT year
FROM car_models
ORDER BY year ASC;

CREATE TABLE make (  
ID SERIAL PRIMARY KEY NOT NULL,
make_code character varying(20) DEFAULT NULL, 
make_title character varying(20) DEFAULT NULL
);

INSERT INTO make (make_code, make_title)
SELECT DISTINCT make_code, make_title
FROM car_models
ORDER BY make_code ASC;



CREATE TABLE model (
ID SERIAL PRIMARY KEY NOT NULL,
model_code character varying(20) DEFAULT NULL,
model_title character varying(45) DEFAULT NULL,
make_id INT references make(ID),
year_id INT references model_year(ID)
);

INSERT INTO model (model_code, model_title, make_id, year_id)
SELECT DISTINCT model_code, model_title, make.id, model_year.id
FROM car_models
INNER JOIN make ON (car_models.make_code = make.make_code)
JOIN model_year ON (car_models.year = model_year.year);

SELECT *  
FROM model;






