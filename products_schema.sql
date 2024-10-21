CREATE DATABASE IF NOT EXISTS products_db;
USE fb_db;

-- ## FOOD & BEVERAGE TABLES ##

-- Room Service Table
CREATE TABLE roomSvc (
  id INT AUTO_INCREMENT PRIMARY KEY,
  RoomID INT NOT NULL,
  GuestID INT NOT NULL,
  StaffID INT NOT NULL, -- This would be the server. 
  bgID INT DEFAULT NULL, -- Nullable if not linked to Bar & Grille order
  FOREIGN KEY (RoomID) REFERENCES rooms(id), -- Reference to Room table
  FOREIGN KEY (GuestID) REFERENCES guests(id), -- Reference to Guest table
  FOREIGN KEY (StaffID) REFERENCES staff(id), -- Reference to Staff table
  FOREIGN KEY (bgID) REFERENCES bar_grille(id) -- Nullable reference to Bar & Grille table
);

-- Bar & Grille Table
CREATE TABLE bar_grille (
  id INT AUTO_INCREMENT PRIMARY KEY,
  RoomID INT DEFAULT NULL, -- Nullable if served at the restaurant
  GuestID INT NOT NULL,
  StaffID INT NOT NULL, -- This would be the server.
  dishID INT NOT NULL, -- The dish served
  roomSvcID INT DEFAULT NULL, -- Nullable if not linked to Room Service
  FOREIGN KEY (RoomID) REFERENCES rooms(id), -- Nullable reference for in-room service
  FOREIGN KEY (GuestID) REFERENCES guests(id), -- Reference to Guest table
  FOREIGN KEY (StaffID) REFERENCES staff(id), -- Reference to Staff table
  FOREIGN KEY (dishID) REFERENCES dish(id), -- Reference to Dish table
  FOREIGN KEY (roomSvcID) REFERENCES roomSvc(id) -- Nullable reference to Room Service
);

-- Product (Packaged Food) Table
CREATE TABLE product (
  id INT AUTO_INCREMENT PRIMARY KEY,
  productName VARCHAR(100) NOT NULL,
  company VARCHAR(100) NOT NULL,
  pkgSizeOz INT(),
  price DECIMAL(10, 2) NOT NULL
);

-- Dish Table
CREATE TABLE dish (
  id INT AUTO_INCREMENT PRIMARY KEY,
  foodIngredientID INT NOT NULL,
  hot BOOLEAN,
  servings INT,
  price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (foodIngredientID) REFERENCES foodIngredients(id) -- Foreign key reference
);

-- Cocktail Table
CREATE TABLE cocktail (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  ingredientID INT NOT NULL, -- Will reference liquor ingredients
  sizeOzs TINYINT,
  price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (ingredientID) REFERENCES liqIngredients(id) -- Foreign key reference
);

-- Food Ingredients Table
CREATE TABLE foodIngredients (
  id INT AUTO_INCREMENT PRIMARY KEY,
  ingName VARCHAR(100) NOT NULL,
  ingType TINYINT NOT NULL, -- 1=Meat, 2=Vegetable, 3=Starch, 4=Other
  amountOzs INT --whole oz only
);

-- Liquor Ingredients Table
CREATE TABLE liqIngredients (
  id INT AUTO_INCREMENT PRIMARY KEY,
  ingName VARCHAR(100) NOT NULL,
  liquorOrMixer BOOLEAN -- 0 = Mixer, 1 = Liquor
  amountOzs DECIMAL (10, 2) -- 1 shot is 1.5oz, a double is 3oz, etc
);
