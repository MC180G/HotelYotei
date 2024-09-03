USE sales_db;

CREATE TABLE rooms
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
