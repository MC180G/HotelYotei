-- Sample Data for rooms Table

INSERT INTO rooms (room_number, category_id, price, flr_num, clean, facing)
VALUES
(101, 1, 150.00, 1, true, 1),  -- Room 101, facing North, clean, standard category
(102, 2, 200.00, 1, false, 2), -- Room 102, facing East, not clean, deluxe category
(203, 1, 155.00, 2, true, 3),  -- Room 203, facing South, clean, standard category
(204, 3, 300.00, 2, true, 4),  -- Room 204, facing West, clean, suite category
(305, 2, 220.00, 3, false, 1), -- Room 305, facing North, not clean, deluxe category
(306, 1, 160.00, 3, true, 2);  -- Room 306, facing East, clean, standard category

-- Explanation of the Data:

    -- Room 101: A standard category room, priced at $150.00, located on the 1st floor, clean, and facing North.
    -- Room 102: A deluxe category room, priced at $200.00, located on the 1st floor, not clean, and facing East.
    -- Room 203: Another standard category room, priced at $155.00, located on the 2nd floor, clean, and facing South.
    -- Room 204: A suite category room, priced at $300.00, located on the 2nd floor, clean, and facing West.
    -- Room 305: A deluxe category room, priced at $220.00, located on the 3rd floor, not clean, and facing North.
    -- Room 306: A standard category room, priced at $160.00, located on the 3rd floor, clean, and facing East.

-- Additional Considerations:

    -- Auto-Increment id: The id column is set to AUTO_INCREMENT, so it’s not included in the INSERT statements since it will be automatically populated by the database.
    -- Facing Direction: The facing column uses TINYINT values to represent directions (1 = North, 2 = East, 3 = South, 4 = West).
    -- Clean Status: The clean column is a boolean, indicating whether the room is clean (true) or not (false).