CREATE DATABASE IF NOT EXISTS sales_db;

USE sales_db;

CREATE TABLE room
(
id INT AUTO_INCREMENT NOT NULL ,
room_number INT,
  -- What is catagory? Like suites, single twin bed pods, etc?
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
position_id INT,
dept_id INT,
shift TINYINT,
-- 1=6a/2p, 2=2p/10p, 3=10p/6a
);

CREATE TABLE booking
(
id INT AUTO_INCREMENT NOT NULL,
room_id INT,
guest_id INT,
staff_id INT,
available BOOLEAN,
  -- in this case "available" means both not occupied AND clean; there may be rare cases where the guest changes during a stay or some deal is made, and the BOOLEAN will say it was NOT available when booked
date_booked DATETIME,
check_in DATETIME,
check_out DATETIME,
staff_id INT,
);

-- Food & Beverage; Also refered to as MINI BAR in diagram
CREATE TABLE fb 
(
id INT AUTO_INCREMENT NOT NULL,
room_id INT,
guest_id INT,
  -- in groups, guests may purchase something from another guests mini bar, or room, or treat another guest to a meal or drink
product_id INT,
quanity INT,
price MONEY,
discount BOOLEAN,
FOREIGN KEY (discount)
REFERENCES table.guest(vip)
);
