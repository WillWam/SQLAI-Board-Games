-- Insert data into game_cart
INSERT INTO game_cart (game_cart_id, game_category)
VALUES
    (1, 'Social Deduction'),
    (2, 'Card'),
    (3, 'Bluffing'),
    (4, 'Deck Builder'),
    (5, 'Strategy'),
    (6, 'Puzzle'),
    (7, 'Action'),
    (8, 'Party');

-- Insert data into game
INSERT INTO game (game_id, game_cart_id, name, price)
VALUES
    (1, 1, 'Among Us', 19.99),
    (2, 2, 'Uno', 9.99),
    (3, 3, 'Codenames', 12.50),
    (4, 4, 'Dominion', 35.00),
    (5, 2, 'Exploding Kittens', 20.00),
    (6, 5, 'Chess', 15.00),
    (7, 6, 'Sudoku', 5.00),
    (8, 7, 'Call of Duty', 60.00),
    (9, 8, 'Pictionary', 25.00),
    (10, 1, 'The Resistance', 18.00),
    (11, 2, 'Skip-Bo', 8.00);

-- Insert data into snack_cart
INSERT INTO snack_cart (snack_cart_id, snack_category)
VALUES
    (1, 'Candy'),
    (2, 'Chips'),
    (3, 'Nuts'),
    (4, 'Cookies'),
    (5, 'Drinks'),
    (6, 'Fruit');

-- Insert data into snack
INSERT INTO snack (snack_id, snack_cart_id, name, price)
VALUES
    (1, 1, 'Gummy Bears', 2.99),
    (2, 1, 'Lollipops', 1.49),
    (3, 2, 'Potato Chips', 3.50),
    (4, 2, 'Tortilla Chips', 2.99),
    (5, 3, 'Cashews', 5.00),
    (6, 3, 'Almonds', 4.75),
    (7, 4, 'Chocolate Chip Cookies', 2.99),
    (8, 4, 'Oatmeal Cookies', 3.25),
    (9, 5, 'Coca-Cola', 1.25),
    (10, 5, 'Pepsi', 1.20),
    (11, 6, 'Apple', 0.99),
    (12, 6, 'Banana', 0.59),
    (13, 6, 'Orange', 0.75);

-- Insert data into person
INSERT INTO person (person_id, first_name, last_name)
VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Smith'),
    (3, 'Bob', 'Johnson'),
    (4, 'Alice', 'Williams'),
    (5, 'Charlie', 'Brown'),
    (6, 'Eve', 'Davis'),
    (7, 'Frank', 'Miller'),
    (8, 'Grace', 'Moore');

-- Insert data into rental
INSERT INTO rental (rental_id, person_id, game_id, rental_price, rent_time, return_time)
VALUES
    (1, 1, 1, 25.00, '2023-05-01 14:00:00', '2023-05-01 18:00:00'),
    (2, 2, 2, 10.00, '2023-05-02 16:00:00', '2023-05-02 19:00:00'),
    (3, 3, 3, 15.00, '2023-06-10 10:00:00', '2023-06-10 13:00:00'),
    (4, 4, 4, 30.00, '2023-07-15 12:00:00', '2023-07-15 15:00:00'),
    (5, 5, 5, 20.00, '2023-08-20 14:30:00', '2023-08-20 17:30:00'),
    (6, 6, 6, 40.00, '2023-09-10 09:00:00', '2023-09-10 12:00:00'),
    (7, 7, 7, 50.00, '2023-09-15 15:00:00', '2023-09-15 18:00:00'),
    (8, 8, 8, 60.00, '2023-10-01 12:00:00', '2023-10-01 16:00:00');

-- Insert data into snack_purchase
INSERT INTO snack_purchase (snack_purchase_id, person_id, snack_id, price, purchase_time)
VALUES
    (1, 1, 1, 2.99, '2023-05-01 14:30:00'),
    (2, 2, 2, 1.49, '2023-05-02 16:30:00'),
    (3, 3, 3, 3.50, '2023-06-10 10:30:00'),
    (4, 4, 4, 2.99, '2023-07-15 12:30:00'),
    (5, 5, 5, 5.00, '2023-08-20 15:00:00'),
    (6, 6, 6, 4.75, '2023-09-10 09:30:00'),
    (7, 7, 7, 2.99, '2023-09-15 15:30:00'),
    (8, 8, 8, 3.25, '2023-10-01 12:30:00'),
    (9, 1, 9, 1.25, '2023-05-01 14:40:00'),
    (10, 2, 10, 1.20, '2023-05-02 16:40:00'),
    (11, 3, 11, 0.99, '2023-06-10 10:40:00'),
    (12, 4, 12, 0.59, '2023-07-15 12:40:00');
