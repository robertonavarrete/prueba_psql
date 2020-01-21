BEGIN;
CREATE DATABASE prueba;

CREATE TABLE bills(bill_number INT,customer_id INT, bill_date DATE,subtotal INT,PRIMARY KEY(bill_number));
CREATE TABLE customers(customer_id INT, name VARCHAR (100), rut VARCHAR(9),address VARCHAR (100), PRIMARY KEY (customer_id));

CREATE TABLE products(product_id INT,category_id INT,name VARCHAR(50), description VARCHAR(200), unit_price INT, PRIMARY KEY (product_id));

CREATE TABLE categories(category_id INT, name VARCHAR(50),description VARCHAR(200), PRIMARY KEY (category_id));

CREATE TABLE bills_details(bill_number INT, product_id INT,quantity INT,FOREIGN KEY(bill_number)REFERENCES bills(bill_number), FOREIGN KEY (product_id) REFERENCES products(product_id));

COMMIT;