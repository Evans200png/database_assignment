-- book_language
INSERT INTO book_language (language_name) VALUES 
('English'), ('French'), ('Spanish'), ('German'),
('Italian'), ('Portuguese'), ('Chinese'), ('Japanese'),
('Swahili'), ('Arabic');

-- publisher
INSERT INTO publisher (name) VALUES 
('Pearson'), ('O\'Reilly'), ('Penguin Books'), ('HarperCollins'),
('Springer'), ('Cambridge Press'), ('Random House'), ('McGraw-Hill'),
('East African Publishers'), ('Heinemann');

-- author
INSERT INTO author (first_name, last_name) VALUES 
('John', 'Smith'), ('Jane', 'Doe'), ('Robert', 'Martin'), ('Emily', 'Clark'),
('Ngugi', 'wa Thiong\'o'), ('Yvonne Adhiambo', 'Owuor'), ('Chimamanda', 'Adichie'),
('Alan', 'Turing'), ('Grace', 'Hopper'), ('Ada', 'Lovelace');

-- book
INSERT INTO book (title, publisher_id, language_id, price) VALUES 
('Learn SQL', 1, 1, 29.99), 
('Advanced Databases', 2, 2, 39.99), 
('Clean Code', 3, 1, 34.95), 
('Design Patterns', 4, 3, 44.50),
('Data Structures', 5, 4, 28.75), 
('Machine Learning Basics', 6, 1, 49.99), 
('Networks and Protocols', 7, 5, 31.50), 
('AI Revolution', 8, 6, 53.10),
('The River and the Source', 9, 1, 25.00), 
('Weep Not, Child', 10, 1, 27.00);

-- book_author
INSERT INTO book_author (book_id, author_id) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), 
(5, 8), (6, 9), (7, 10), (8, 3), 
(9, 6), (10, 5), 
(10, 7); -- Co-authored African writers

-- country
INSERT INTO country (country_name) VALUES 
('USA'), ('France'), ('Spain'), ('Germany'),
('Italy'), ('Portugal'), ('China'), ('Japan'),
('Kenya'), ('Nigeria');

-- address
INSERT INTO address (street, city, postal_code, country_id) VALUES 
('123 Main St', 'New York', '10001', 1), 
('456 Rue de Paris', 'Paris', '75001', 2),
('789 Calle Mayor', 'Madrid', '28013', 3), 
('321 Berliner Str.', 'Berlin', '10115', 4),
('Via Roma 88', 'Rome', '00100', 5),
('Av. da Liberdade', 'Lisbon', '1250-096', 6),
('Nanjing Rd.', 'Shanghai', '200000', 7),
('Shibuya St.', 'Tokyo', '150-0002', 8),
('Moi Avenue', 'Nairobi', '00100', 9),
('Awolowo Rd.', 'Lagos', '100001', 10);

-- address_status
INSERT INTO address_status (status_description) VALUES 
('current'), ('old'), ('temporary'), ('billing'),
('shipping'), ('primary'), ('secondary'), ('archived'),
('home'), ('work');

-- customer
INSERT INTO customer (first_name, last_name, email) VALUES 
('Alice', 'Brown', 'alice@example.com'), 
('Bob', 'White', 'bob@example.com'),
('Charlie', 'Green', 'charlie@example.com'),
('Diana', 'Black', 'diana@example.com'),
('Edward', 'Gray', 'edward@example.com'),
('Fiona', 'Blue', 'fiona@example.com'),
('George', 'Gold', 'george@example.com'),
('Hannah', 'Silver', 'hannah@example.com'),
('Ibrahim', 'Omari', 'ibrahim@example.com'),
('Joy', 'Makena', 'joy@example.com');

-- customer_address
INSERT INTO customer_address (customer_id, address_id, address_status_id) VALUES 
(1, 1, 1), (2, 2, 1), (3, 3, 1), (4, 4, 1), 
(5, 5, 1), (6, 6, 1), (7, 7, 1), (8, 8, 1),
(9, 9, 1), (10, 10, 1);

-- shipping_method
INSERT INTO shipping_method (method_name) VALUES 
('Standard'), ('Express'), ('Overnight'), ('International'),
('Drone'), ('Pickup'), ('Courier'), ('Same-Day'),
('Regional'), ('Eco');

-- order_status
INSERT INTO order_status (status_description) VALUES 
('pending'), ('shipped'), ('delivered'), ('cancelled'),
('processing'), ('returned'), ('on hold'), ('confirmed'),
('in transit'), ('failed');

-- cust_order
INSERT INTO cust_order (customer_id, order_status_id, shipping_method_id, order_date) VALUES 
(1, 1, 1, '2024-01-10'), (2, 2, 2, '2024-01-12'),
(3, 3, 3, '2024-01-13'), (4, 4, 4, '2024-01-15'),
(5, 5, 5, '2024-02-10'), (6, 6, 6, '2024-02-12'),
(7, 7, 7, '2024-03-01'), (8, 8, 8, '2024-03-05'),
(9, 9, 9, '2024-03-10'), (10, 10, 10, '2024-03-12');

-- order_line
INSERT INTO order_line (order_id, book_id, quantity) VALUES 
(1, 1, 2), (2, 2, 1), (3, 3, 3), (4, 4, 1),
(5, 5, 1), (6, 6, 2), (7, 7, 1), (8, 8, 1),
(9, 9, 2), (10, 10, 2);

-- order_history
INSERT INTO order_history (order_id, order_status_id, status_date) VALUES 
(1, 1, '2024-01-10'), (1, 2, '2024-01-11'),
(2, 2, '2024-01-12'), (3, 3, '2024-01-14'),
(4, 4, '2024-01-15'), (5, 5, '2024-02-10'),
(6, 6, '2024-02-12'), (7, 7, '2024-03-01'),
(8, 8, '2024-03-05'), (9, 9, '2024-03-10');
