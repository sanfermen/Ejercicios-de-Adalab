USE tienda;

/* 1. Selecciona los apellidos que se encuentren en ambas tablas para employees y customers, con alias "Apellidos"*/
SELECT last_name AS Apellidos
FROM employees
WHERE last_name IN (
	SELECT contact_last_name
	FROM customers);
    
/* 2. Selecciona los nombres con alias "nombre* y apellidos con alias "apellidos" tanto de clientes como de los empleados de las tablas employees y customers */
SELECT contact_first_name AS Nombre, contact_last_name AS Apellidos
FROM customers
UNION
SELECT first_name AS Nombre, last_name AS Apellidos
FROM employees;

/* 3. Selecciona todos los nombres y apellidos, con alias "Apellidos" tanto de los clientes como de los empleados de las tablas employees y customers*/
SELECT contact_first_name AS Nombre, contact_last_name AS Apellidos
FROM customers
UNION ALL
SELECT first_name AS Nombre, last_name AS Apellidos
FROM employees;

/* 4. Consulta para ver que empleados tienen algún contrato asignado con alguno de los clientes existentes.*/
/* Seleccionar EmployeeNumber como "Número Empleado", firstName como "Nombre Empleado y lastName como "Apellido Empleado"*/
SELECT employee_number AS `Número Empleado`, first_name AS `Nombre Empleado`, last_name AS `Apellido Empleado`
FROM employees
WHERE employee_number IN (
	SELECT sales_rep_employee_number
    FROM customers);
    
/* 5. Seleccionar aquellas ciudades como "ciudad" y los nombres de las empresas como "nombre de empresa" de customers, sin repteciones, que no tengan una oficina en dicha ciudad de la tabla offices*/
SELECT city AS Ciudad, customer_name AS `Nombre de Empresa`
FROM customers
WHERE city NOT IN(
	SELECT city
    FROM offices);