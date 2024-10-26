# Hotel Yotei

Hotel Yotei is a fictional hotel that operates with a SQL Database. Their amenities are numerous and exotic. They offer services, products, and meals, but with no substitutions.

Version 2 wil include: 
* More Services for guests (SPA, Excusions, Classes)
* Room for substitutions in F&B
* Time/Date stamps for purchases from F&B

## TABLES
   A list of all stored data including (but not limited to): guests, services, meals, prices, and dates. All tables include a Primary ID.

### Sales
   * Room (Number, Catagory, Floor, Price, View Direction, and whether it's clean tonight)
   * Guest (Name, Phone, Email, Address, and VIP Status)
   * Staff (Name, Position, Dept, and Shift)
   * Booking (Room, Guest, Staff who booked, When Booked, and Check in/out date)
   * Mini Bar (Room, Guest, Product, Amount, Price, and if there is a Discount)

### Food & Beverage
   * Bar & Grille (Room, Guest, Staff, Dish, RmSvcID)
   * Room Service (Room, Guest, Staff, Product, B&GID)   
   * Product i.e. Packaged Food (Product Name, Company, Package Size, Price)
   * Dish (Ingredients, Servings, Price, and whether it is HOT)
   * Cocktail (Name, Ingredients, Size, Price)
   * Food Ingredients (Name, Type (Meat, Veg, Grain, Other), Amount)
   * Liquor Ingredients (Name, Type (Liquor or Mixer), Amount)

![Yotei Schematic](https://github.com/user-attachments/assets/7d01a83b-d514-4b6c-9836-bc8b55508219)

