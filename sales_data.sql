-- ### **Sample Data for the `guest` Table**

``sql
-- Sample Data for guest Table

INSERT INTO guest (first_name, last_name, phone, email, street, city, province, zip, country, vip)
VALUES
('John', 'Doe', '555-1234', 'johndoe@example.com', '123 Maple St', 'Springfield', 'IL', '62701', 'USA', true),
('Jane', 'Smith', '555-5678', 'janesmith@example.com', '456 Oak Ave', 'Centerville', 'CA', '90210', 'USA', false),
('Alice', 'Johnson', '555-9012', 'alicej@example.com', '789 Pine Dr', 'Metropolis', 'NY', '10001', 'USA', false),
('Bob', 'Brown', '555-3456', 'bobbrown@example.com', '321 Cedar Ln', 'Gotham', 'NJ', '07001', 'USA', true),
('Charlie', 'Davis', '555-7890', 'charlied@example.com', '654 Birch Blvd', 'Star City', 'FL', '33101', 'USA', true);
```

### **Sample Data for the `staff` Table**

```sql
-- Sample Data for staff Table

INSERT INTO staff (first_name, last_name, dept_id, shift, position_id)
VALUES
('Sarah', 'Connor', 1, 1, 101),  -- Front Desk, Morning Shift, Manager
('James', 'Carter', 2, 2, 102),  -- Housekeeping, Afternoon Shift, Supervisor
('Emily', 'Stone', 1, 3, 103),   -- Front Desk, Night Shift, Clerk
('Michael', 'Johnson', 3, 1, 104),-- Kitchen, Morning Shift, Chef
('Rachel', 'Adams', 4, 2, 105);  -- Maintenance, Afternoon Shift, Technician
```

### **Sample Data for the `booking` Table**

```sql
-- Sample Data for booking Table

INSERT INTO booking (room_id, guest_id, available, date_booked, check_in, check_out, staff_id)
VALUES
(1, 1, false, '2024-09-01 14:00:00', '2024-09-10 15:00:00', '2024-09-15 11:00:00', 1),  -- John Doe booking
(2, 2, false, '2024-09-02 10:30:00', '2024-09-11 16:00:00', '2024-09-13 10:00:00', 2),  -- Jane Smith booking
(3, 3, true, NULL, NULL, NULL, 3),  -- Available room
(4, 4, false, '2024-09-03 09:00:00', '2024-09-12 14:00:00', '2024-09-14 12:00:00', 4),  -- Bob Brown booking
(5, 5, false, '2024-09-04 11:45:00', '2024-09-13 13:00:00', '2024-09-18 10:30:00', 5);  -- Charlie Davis booking
```

### **Sample Data for the `fb` Table**

```sql
-- Sample Data for fb Table

INSERT INTO fb (room_id, product_id, quanity, price, discount)
VALUES
(1, 101, 2, 30.00, true),  -- Two items, discounted, for a VIP guest
(2, 102, 1, 15.00, false), -- One item, no discount
(3, 103, 3, 45.00, false), -- Three items, no discount
(4, 104, 1, 25.00, true),  -- One item, discounted for a VIP guest
(5, 105, 2, 40.00, true);  -- Two items, discounted for a VIP guest
```

**Explanation of the Data**

- **`guest` Table**: Contains five guests, with varying `vip` statuses (true for VIPs and false for non-VIPs). These details include basic contact information.

- **`staff` Table**: Contains five staff members, with each having a department, shift, and position ID. The shift is represented as a `TINYINT` (1 for morning, 2 for afternoon, 3 for night).

- **`booking` Table**: Records five bookings, linking rooms and guests, including booking dates, check-in and check-out times, and the staff member who handled the booking. Note that `available` is false when a room is booked.

- **`fb` Table**: Represents food and beverage orders tied to room service, with quantities, prices, and whether a discount was applied. The discount is linked to whether the guest is a VIP.

### **Additional Notes:**
- **`AUTO_INCREMENT`**: The `id` columns are set to `AUTO_INCREMENT`, so they're not included in the `INSERT` statements because the database will automatically generate these IDs.
- **Foreign Keys**: Make sure that any foreign keys (e.g., `category_id`, `guest_id`, `staff_id`, etc.) have matching values in their respective tables.
- **Boolean Fields**: `clean`, `available`, and `discount` fields are `BOOLEAN`, so they are set to true or false as appropriate.

This data setup provides a comprehensive and coherent dataset that recruiters can use to explore the relationships between tables in your database.