USE tienda;

/* 1. Selecciona el ID, nombre, apellidos de todas las empleadas y el ID de cada cliente asociado a ellas (si es que lo tienen)*/
SELECT employees.employee_number AS IdEmpleada, employees.first_name AS Nombre, employees.last_name AS Apellido, customers.customer_number AS IDCliente
FROM employees
LEFT JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number;

/* 2. Selecciona el ID de todos los clientes, y el nombre y apellidos de las empleadas que llevan sus pedidos */
SELECT employees.first_name AS Nombre, employees.last_name AS Apellido, customers.customer_number AS IDCliente
FROM employees
RIGHT JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number;

/* 3. Selecciona el ID, nombre, apellidos de las empleadas, para aquellas con más de 8 clientes, usando LEFT JOIN*/
SELECT employees.employee_number AS IdEmpleada, employees.first_name AS Nombre, employees.last_name AS Apellido, COUNT(DISTINCT customers.customer_number) AS NumClientes
FROM employees
LEFT JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number
HAVING COUNT(DISTINCT customers.customer_number) > 8;

/* 4. Selecciona el ID, nombre, apellidos de las empleadas, para aquellas con más de 8 clientes, usando RIGHT JOIN*/
SELECT employees.employee_number AS IdEmpleada, employees.first_name AS Nombre, employees.last_name AS Apellido, COUNT(DISTINCT customers.customer_number) AS NumClientes
FROM customers
RIGHT JOIN employees
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number
HAVING COUNT(DISTINCT customers.customer_number) > 8;

/* 5. Selecciona el nombre y apellidos de las empleadas que tienen clientes de más de un país, usando LEFT JOIN*/
SELECT employees.first_name AS Nombre, employees.last_name AS Apellido
FROM employees
LEFT JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number
HAVING COUNT(DISTINCT customers.country) > 1;