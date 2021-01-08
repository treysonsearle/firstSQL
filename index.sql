CREATE TABLE person ( person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'First Last', 21, 182, 'City', 'Color' );
SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;
SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 OR age > 30;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favorite_color != 'red';
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )
 
CREATE TABLE orders ( order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Product', 12.50, 2 );
SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;

INSERT INTO artist ( name ) VALUES ( 'artist name' );
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
SELECT * FROM artist WHERE name LIKE 'Black%';
SELECT * FROM artist WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
SELECT MAX(birth_date) from employee;
SELECT MIN(birth_date) from employee;
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;