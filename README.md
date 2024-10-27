# Hotel Yotei Database

## Project Overview
Hotel Yotei is a fictional luxury hotel designed to showcase a relational SQL database with a variety of structured tables and interconnections. The database models the hotel’s offerings, including guest services, food & beverage items, and booking records, with detailed information on room assignments, staff shifts, and service transactions.

This README provides an overview of the database tables and a preview of features planned for future releases.

---

## Features

- **Comprehensive Data Tables:** Capture hotel operations data, from guest bookings and room assignments to product sales and food & beverage details.
- **Exclusive Hotel Offerings:** The database models a no-substitutions policy, emphasizing unique service offerings.
- **Version Roadmap:** Planned updates to enrich guest experiences and data functionality.

---

## Future Enhancements (Version 2)

The upcoming version will introduce:
- **New Services:** Expanded offerings including SPA, Excursions, and Classes.
- **Flexible Food & Beverage Options:** Allow substitutions in Food & Beverage orders.
- **Timestamped Transactions:** Date and time records for F&B purchases, improving data accuracy and tracking.

---

## Database Schema

The database schema consists of tables grouped under **Sales** and **Food & Beverage** categories. Each table contains a unique primary ID to ensure data integrity and support table relationships.

### Sales Tables

1. **Room**  
   - Stores room details: Number, Category, Floor, Price, View Direction, and Clean Status.

2. **Guest**  
   - Guest contact information: Name, Phone, Email, Address, and VIP Status.

3. **Staff**  
   - Staff records: Name, Position, Department, and Shift.

4. **Booking**  
   - Booking data: Room, Guest, Staff who booked, Date of Booking, Check-in and Check-out dates.

5. **Mini Bar**  
   - Mini bar transactions: Room, Guest, Product, Quantity, Price, and Discount status.

### Food & Beverage Tables

1. **Bar & Grille (B&G)**  
   - Details of on-site dining: Room, Guest, Staff, Dish, and Room Service ID (RmSvcID).

2. **Room Service**  
   - In-room dining transactions: Room, Guest, Staff, Product, and Bar & Grille ID (B&GID).

3. **Product**  
   - Catalog of packaged foods: Product Name, Company, Package Size, and Price.

4. **Dish**  
   - Dishes available in B&G: Ingredients, Servings, Price, and Hot Status (indicates whether it’s a hot dish).

5. **Cocktail**  
   - Drink options: Cocktail Name, Ingredients, Size, and Price.

6. **Food Ingredients**  
   - Ingredient details: Name, Type (Meat, Vegetable, Grain, or Other), and Quantity.

7. **Liquor Ingredients**  
   - Liquor details for cocktails: Ingredient Name, Type (Liquor or Mixer), and Quantity.

---

## Database Schematic

This database schematic (ERD) is included to visually represent relationships between tables, aiding in understanding table links and dependencies across hotel operations.
![Yotei Schematic](https://github.com/user-attachments/assets/bfb121c4-f7ab-4918-b5a5-2ff988b5aa7c)


---

## Getting Started

To set up and interact with the Hotel Yotei database:
1. **Download & Install Requirements:** Set up a local SQL environment, such as MySQL or PostgreSQL.
2. **Import Database Schema:** Use provided SQL scripts to create and populate tables.
3. **Explore Data:** Run queries to view, insert, update, and delete records, as well as explore relationships between tables.

---

## License

This project is open-source and available for educational and non-commercial use.  

---

## Purpose
This project was created to showcase my SQL proficiency and demonstrate advanced database design skills to prospective employers. Hotel Yotei serves as a comprehensive example of database structuring, relational modeling, and data handling within a hospitality context.

## Queries:
Here are some example queries that could be run against this database:

1. **List all guests currently checked in:**
   ```sql
   SELECT * FROM Guests
   WHERE CURDATE() BETWEEN CheckInDate AND CheckOutDate;
   ```

2. **List all products and the quantity sold:**
   ```sql
   SELECT P.ProductName, SUM(PP.Quantity) AS TotalSold
   FROM Products P
   JOIN ProductPurchases PP ON P.ProductID = PP.ProductID
   GROUP BY P.ProductName;
   ```

3. **List services purchased by a specific guest:**
   ```sql
   SELECT S.ServiceName, SP.ServiceDate, SP.ServiceTime
   FROM Services S
   JOIN ServicePurchases SP ON S.ServiceID = SP.ServiceID
   WHERE SP.GuestID = 1;
   ```

4. **List all meals and whether a guest accepted them:**
   ```sql
   SELECT G.FirstName, G.LastName, M.MealName, MC.ChoiceDate, MC.AcceptMeal
   FROM Guests G
   JOIN MealChoices MC ON G.GuestID = MC.GuestID
   JOIN Meals M ON MC.MealID = M.MealID;
   ```

5. **Calculate the total value of dining vouchers given out:**
   ```sql
   SELECT SUM(DiningVoucher) AS TotalVouchers
   FROM MealChoices
   WHERE AcceptMeal = FALSE;
   ```

