CREATE DATABASE IF NOT EXISTS products_db;

USE products_db;
-- Or USE products_data.sql;

CREATE TABLE packaged_food
(
id INT AUTO_INCREMENT NOT NULL,
productName VARCHAR,
company VARCHAR,
pkgSize VARCHAR,
price MONEY
);

CREATE TABLE dish
(
id INT NOT NULL,
ingred1 VARCHAR,
ingred2 VARCHAR,
ingred3 VARCHAR,
ingred4 VARCHAR,
hot boolean,
srvngs INT,
price MONEY,
);

CREATE TABLE bottled_drink
(
id INT NOT NULL,
size VARCHAR,

);

CREATE TABLE cocktail
(
id INT NOT NULL,
ingred1 VARCHAR,
ingred2 VARCHAR,
ingred3 VARCHAR,
ingred4 VARCHAR,
sizeOzs INT,
price MONEY,
);

CREATE TABLE foodIngredients
(
id INT NOT NULL,
ingName VARCHAR,
ingType TINYINT,
--1=Meat or Cheese 2=Vegetable 3=Starch or Grain 4=Other
amountOzs INT,
);

CREATE TABLE liqIngredients
(
id INT NOT NULL,
ingName VARCHAR,
liquorOrMixer BOOLean,
--yes = liqour : no = mixer
amountOzs INT,
);