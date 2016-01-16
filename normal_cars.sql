CREATE USER normal_user;

CREATE DATABASE normal_cars OWNED normal_user;

CREATE TABLE year (
ID SERIAL PRIMARY KEY NOT NULL,
year INT DEFAULT NOT NULL
);

CREATE TABLE make_code (
ID SERIAL PRIMARY KEY NOT NULL,
make_code character varying(50), 
make_title_id INT references make_title(ID),
year_id INT references year(ID)
);

CREATE TABLE make_title (
ID SERIAL PRIMARY KEY NOT NULL,
make_title character varying(20) DEFAULT NULL,
model_code_id INT references model_code(ID),
year_id INT references year(ID)
);

CREATE TABLE model_code (
ID SERIAL PRIMARY KEY NOT NULL,
model_code character varying(50) DEFAULT NULL,
model_title_id INT references model_title(ID),
year_id INT references year(ID)
);

CREATE TABLE model_title (
ID SERIAL PRIMARY KEY NOT NULL,
model_title character varying(50),
make_code_id INT references make_code(ID),
model_code_id INT references model_code(ID),
year_id INT references year(ID)
);

