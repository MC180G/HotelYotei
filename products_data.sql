-- products_data.sql

-- Inserting data into the packaged_food table
INSERT INTO packaged_food (productName, company, pkgSize, price)
VALUES 
('Granola Bar', 'Nature Valley', '6 Pack', 5.99),
('Chips', 'Lay\'s', 'Family Size', 4.29),
('Cereal', 'Kellogg\'s', '500g Box', 3.89);

-- Inserting data into the dish table
INSERT INTO dish (id, ingred1, ingred2, ingred3, ingred4, hot, srvngs, price)
VALUES 
(1, 'Chicken', 'Rice', 'Broccoli', 'Soy Sauce', true, 2, 12.50),
(2, 'Beef', 'Potato', 'Carrot', 'Gravy', true, 4, 18.75),
(3, 'Pasta', 'Tomato', 'Basil', 'Cheese', true, 1, 9.99);

-- Inserting data into the bottled_drink table
INSERT INTO bottled_drink (id, size)
VALUES 
(1, '500ml'),
(2, '1L'),
(3, '750ml');

-- Inserting data into the cocktail table
INSERT INTO cocktail (id, ingred1, ingred2, ingred3, ingred4, sizeOzs, price)
VALUES 
(1, 'Vodka', 'Cranberry Juice', 'Lime Juice', 'Ice', 12, 8.99),
(2, 'Rum', 'Coke', 'Lime', 'Ice', 10, 7.50),
(3, 'Gin', 'Tonic Water', 'Lemon', 'Ice', 10, 8.50);

-- Inserting data into the foodIngredients table
INSERT INTO foodIngredients (id, ingName, ingType, amountOzs)
VALUES 
(1, 'Chicken Breast', 1, 16),
(2, 'Rice', 3, 8),
(3, 'Broccoli', 2, 6),
(4, 'Beef', 1, 20),
(5, 'Potato', 3, 12);

-- Inserting data into the liqIngredients table
INSERT INTO liqIngredients (id, ingName, liquorOrMixer, amountOzs)
VALUES 
(1, 'Vodka', true, 1.5),
(2, 'Cranberry Juice', false, 4),
(3, 'Rum', true, 1.5),
(4, 'Tonic Water', false, 4);
