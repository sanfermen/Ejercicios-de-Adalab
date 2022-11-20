SELECT *
FROM customers
ORDER BY credit_limit ASC;

SELECT city
FROM customers
WHERE country = "USA"
ORDER BY city ASC;

SELECT DISTINCT country
FROM customers;

SELECT DISTINCT city, country
FROM customers;

SELECT customer_name, city, credit_limit
FROM customers
ORDER BY credit_limit DESC
LIMIT 10;

SELECT customer_name, city
FROM customers
WHERE country = "USA"
ORDER BY credit_limit DESC
LIMIT 10;

SELECT country
FROM customers
WHERE country = "France"
LIMIT 2;

SELECT customer_name, city
FROM customers
ORDER BY credit_limit DESC
LIMIT 1
OFFSET 1;

SELECT *
FROM customers
WHERE credit_limit BETWEEN 100000 AND 110000;

SELECT customer_name, contact_first_name, city
FROM customers
WHERE city IN ("NYC", "San Diego", "San Francisco");

SELECT customer_name AS Nombre, city AS Ciudad
FROM customers AS Clientes;

