CREATE DATABASE bookstore; -- creating database
  
 USE bookstore;
 
 -- create book_language table
 CREATE TABLE book_language (
     language_id INT PRIMARY KEY AUTO_INCREMENT,
     language_name VARCHAR(50)
 );
 
 -- create publisher table
 CREATE TABLE publisher (
     publisher_id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(100)
 );
 
 -- create book table
 CREATE TABLE book (
     book_id INT PRIMARY KEY AUTO_INCREMENT,
     title VARCHAR(255),
     publisher_id INT,
     language_id INT,
     price DECIMAL(10,2),
     FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
     FOREIGN KEY (language_id) REFERENCES book_language(language_id)
 );
 
 -- create author
 CREATE TABLE author (
     author_id INT PRIMARY KEY AUTO_INCREMENT,
     first_name VARCHAR(100),
     last_name VARCHAR(100)
 );
 
 -- create book_author
 CREATE TABLE book_author (
     book_id INT,
     author_id INT,
     PRIMARY KEY (book_id, author_id),
     FOREIGN KEY (book_id) REFERENCES book(book_id),
     FOREIGN KEY (author_id) REFERENCES author(author_id)
 );
 
 -- country table
 CREATE TABLE country (
     country_id INT PRIMARY KEY AUTO_INCREMENT,
     country_name VARCHAR(100)
 );
 
 -- adress tabe
 CREATE TABLE address (
     address_id INT PRIMARY KEY AUTO_INCREMENT,
     street VARCHAR(255),
     city VARCHAR(100),
     postal_code VARCHAR(20),
     country_id INT,
     FOREIGN KEY (country_id) REFERENCES country(country_id)
 );
 
 -- address_status
 CREATE TABLE address_status (
     address_status_id INT PRIMARY KEY AUTO_INCREMENT,
     status_description VARCHAR(50)
 );
 
 -- customer table
 CREATE TABLE customer (
     customer_id INT PRIMARY KEY AUTO_INCREMENT,
     first_name VARCHAR(100),
     last_name VARCHAR(100),
     email VARCHAR(100)
 );
 
 -- customer_adress table
 CREATE TABLE customer_address (
     customer_id INT,
     address_id INT,
     address_status_id INT,
     PRIMARY KEY (customer_id, address_id),
     FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
     FOREIGN KEY (address_id) REFERENCES address(address_id),
     FOREIGN KEY (address_status_id) REFERENCES address_status(address_status_id)
 );
 
 -- shipping_method 
 CREATE TABLE shipping_method (
     shipping_method_id INT PRIMARY KEY AUTO_INCREMENT,
     method_name VARCHAR(50)
 );
 
 -- order status table
 CREATE TABLE order_status (
     order_status_id INT PRIMARY KEY AUTO_INCREMENT,
     status_description VARCHAR(50)
 );
 
 -- cust order table
 CREATE TABLE cust_order (
     order_id INT PRIMARY KEY AUTO_INCREMENT,
     customer_id INT,
     order_status_id INT,
     shipping_method_id INT,
     order_date DATE,
     FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
     FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id),
     FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(shipping_method_id)
 );
 
 -- order line table
 CREATE TABLE order_line (
     order_line_id INT PRIMARY KEY AUTO_INCREMENT,
     order_id INT,
     book_id INT,
     quantity INT,
     FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
     FOREIGN KEY (book_id) REFERENCES book(book_id)
 );
 
 -- order history table
 CREATE TABLE order_history (
     history_id INT PRIMARY KEY AUTO_INCREMENT,
     order_id INT,
     order_status_id INT,
     status_date DATE,
     FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
     FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
 );
 INSERT INTO book_language(language_name)
VALUES
    ("English"),
    ("Kiswahili"),
    ("Spanish");
INSERT INTO publisher (name)
VALUES
    ("Longhorn"),
    ("Shorthorn"),
    ("Today");
INSERT INTO book (title, publisher_id, language_id, price)
VALUES
    ("The Great Gatsby", 1, 1, 10.99),
    ("Dystopian", 2, 2, 9.49),
    ('To Kill a Mockingbird', 3, 3,  12.99); 
INSERT INTO author (first_name, last_name)
VALUES
    ("Leo", "Tom"),
    ("Dan", "Kimani"),
    ("Mary", "Reno");
INSERT INTO book_author (book_id, author_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);
INSERT INTO country (country_name)
VALUES
    ("Kenya"),
    ("Uganda"),
    ("Tanzania");
INSERT INTO address (street, city, postal_code, country_id)
VALUES
    ("Kiambu", "Nairobi", 55, 1),
    ("Thika", "Thika", 65, 2),
    ("Naivasha", "Nakuru", 44, 3);
INSERT INTO address_status (status_description)
VALUES
    ("outcountry"),
    ("within"),
    ("downtown");
INSERT INTO customer (first_name, last_name, email)
VALUES
    ("Tom", "Cer", "tom@gmail.com"),
    ("Abel", "Tina", "abel@gmail.com"),
    ("Kilo", "Kevin", "kilo@gmail.com");
INSERT INTO customer_address (customer_id, address_id, address_status_id)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3);
INSERT INTO shipping_method (method_name)
VALUES
    ("abroad"),
    ("local"),
    ("environs");
INSERT INTO order_status (status_description)
VALUES
    ("onroute"),
    ("not shipped"),
    ("shipped");
INSERT INTO cust_order (customer_id, order_status_id, shipping_method_id, order_date)
VALUES
    (1, 1, 1, "2-2-25"),
    (2, 2, 2, "4-3-25"),
    (3, 3, 3, "6-1-25");
INSERT INTO order_line (order_id, book_id, quantity)
VALUES
    (1, 1, 3),
    (2, 2, 4),
    (3, 3, 6);
INSERT INTO order_history (history_id, order_id, order_status_id, status_date)
VALUES
    (1, 1, 1, "6-3-25"),
    (2, 2, 2, "3-2-25"),
    (3, 3, 3, "1-3-25");