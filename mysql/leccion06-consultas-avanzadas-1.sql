SELECT MIN(product_code) AS ProductMenor
FROM products;

SELECT MAX(customer_name)
FROM customers;

SELECT SUM(amount) AS Total
FROM payments;

SELECT AVG(amount) AS Total
FROM payments;

SELECT COUNT(amount)
FROM payments
WHERE amount >= 40000;

/* 1. Realiza una consulta SELECT que obtenga el número identificativo de cliente más bajo de la base de datos */

SELECT MIN(customer_number) AS 1erCliente
FROM customers;

/* 2. Selecciona el límite de crédito medio para los clientes de España. */

SELECT AVG(credit_limit) AS MediaCredito
FROM customers
WHERE country = "Spain";

/* 3. Selecciona el número de clientes en Francia */

SELECT COUNT(customer_number) AS NumClientes
FROM customers
WHERE country = "France";

/* 4. Selecciona el máximo de crédito que tiene cualquiera de los clientes del empleado con número 1323 */

SELECT MAX(credit_limit) AS Max1323
FROM customers
WHERE sales_rep_employee_number = 1323;

/* 5. Cuál es el número máximo de empleado de la tabla customers? */

SELECT MAX(sales_rep_employee_number)
FROM customers;
