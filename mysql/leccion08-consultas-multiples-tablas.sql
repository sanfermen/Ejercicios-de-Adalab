USE tienda;

/* 1. Selecciona el ID, nombre, apellidos de las empleadas y el ID de cada cliente asociado a ellas, usando CROSS JOIN*/
SELECT employees.employee_number AS NumEmpleado, employees.first_name AS Nombre, employees.last_name AS Apellido, customers.customer_number AS NumCliente
FROM employees
CROSS JOIN customers
WHERE employees.employee_number = customers.sales_rep_employee_number;

/* 2. Selecciona el ID, nombre, apellidos de las empleadas, para aquellas con más de 8 clientes, usando CROSS JOIN*/
SELECT employees.employee_number AS NumEmpleado, employees.first_name AS Nombre, employees.last_name AS Apellido, COUNT(DISTINCT customers.customer_number) AS NumClientes
FROM employees
CROSS JOIN customers
WHERE employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number
HAVING NumClientes > 8;

/* 3. Selecciona el nombre y apellidos de las empleadas que tienen clientes de más de un país, usando CROSS JOIN*/
SELECT employees.first_name AS Nombre, employees.last_name AS Apellido, COUNT(DISTINCT customers.country) AS NumPaises
FROM employees
CROSS JOIN customers
WHERE employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number
HAVING NumPaises > 1;

/* 4. Selecciona el ID, nombre, apellidos de las empleadas y el ID de cada cliente asociado a ellas, usando INNER JOIN*/
SELECT employee_number AS IDEmpleada, first_name AS Nombre, last_name AS Apellido, customers.customer_number AS IDCliente
FROM employees
INNER JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number;

/* 5. Selecciona el ID, nombre, apellidos de las empleadas, para aquellas con más de 8 clientes, usando INNER JOIN*/
SELECT employee_number AS IDEmpleada, first_name AS Nombre, last_name AS Apellido, COUNT(customers.customer_number) AS NumClientes
FROM employees
INNER JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employee_number
HAVING COUNT(customers.customer_number) > 8;

/* 6. Selecciona el nombre y apellidos de las empleadas que tienen clientes de más de un país, usando INNER JOIN*/
SELECT first_name AS Nombre, last_name AS Apellido, COUNT(DISTINCT customers.country) AS NumPaises
FROM employees
INNER JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employee_number
HAVING COUNT(DISTINCT customers.country) > 1;


select concat(first_name, " ", last_name)
from employees;