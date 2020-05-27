CREATE DATABASE sales_db;

USE sales_db;

CREATE TABLE room
(
id INT AUTO_INCREMENT NOT NULL ,
room_number INT,
catagory_id INT,
price MONEY,
flr_num INT,
clean BOOLEAN,
facing TINYINT,
--1=N, 2=E, 3=S, 4-W
FOREIGN KEY (catagory_id)
REFERENCES table.catagory(catgory_id)
--ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE guest
(
id INT AUTO_Increment NOT NULL,
first_name VARCHAR,
last_name VARCHAR NOT NULL,
phone VARCHAR,
email VARCHAR,
street VARCHAR,
city VARCHAR,
province VARCHAR,
zip VARCHAR,
country VARCHAR,
vip BOOLEAN,
);

CREATE TABLE staff
(
id INT AUTO_Increment NOT NULL,
first_name VARCHAR,
last_name VARCHAR,
dept_id INT,
shift TINYINT,
-- 1=6a/2p, 2=2p/10p, 3=10p/6a
position_id INT,
);

CREATE TABLE booking
(
id INT AUTO_INCREMENT NOT NULL,
room_id INT,
guest_id INT,
available BOOLEAN,
date_booked DATETIME,
check_in DATETIME,
check_out DATETIME,
staff_id INT,
);

CREATE TABLE fb 
(
id INT AUTO_INCREMENT NOT NULL,
room_id INT,
product_id INT,
quanity INT,
price MONEY,
discount BOOLEAN,
FOREIGN KEY (discount)
REFERENCES table.guest(vip)
);