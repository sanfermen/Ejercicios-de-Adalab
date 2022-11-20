USE northwind;

-- Selección empleadas mujeres por países
SELECT COUNT(title_of_courtesy) AS MujeresPorPais, country
FROM employees
WHERE title_of_courtesy IN ("Ms.","Mrs.")
GROUP BY country;

USE tienda;

-- Calcula el límite medio de crédito por ciudad de los clientes de USA
SELECT AVG(credit_limit) AS LimiteCredito, city
FROM customers
WHERE country = "USA"
GROUP BY city;

-- Calcula el límite medio de crédito por ciudad de los clientes de USA, de las ciudades que tengan al menos 3 clientes
SELECT AVG(credit_limit) AS LimiteCredito, city
FROM customers
WHERE country = "USA"
GROUP BY city
HAVING COUNT(*) >= 3;

SELECT
CASE
	WHEN credit_limit > 100000 THEN "Alto"
	WHEN credit_limit BETWEEN 50000 AND 99999 THEN "Medio"
    ELSE "Bajo"
    END AS RangoLimiteCredito
FROM customers;

--- EJERCICIO
/* 1. Realiza una consulta SELECT que selecciones el número de cada empleado de ventas, así como el número de clientes distintos que tiene cada uno */
SELECT sales_rep_employee_number AS NoEmpleado, COUNT(DISTINCT customer_number) AS Noclientes
FROM customers
WHERE sales_rep_employee_number IS NOT NULL
GROUP BY sales_rep_employee_number;

/* 2. Selecciona el número de cada empleado de ventas que tenga más de 7 clientes distintos. */
SELECT sales_rep_employee_number AS NoEmpleado, COUNT(DISTINCT customer_number) AS Noclientes
FROM customers
GROUP BY sales_rep_employee_number
HAVING COUNT(DISTINCT customer_number) > 7;

/* 3. Selecciona el número de cada empleado de ventas, así como el número de clientes distintos que tiene cada uno. Asigna una etiqueta de "AltoRendimiento" a aquellos empleados con más de 7 clientes distintos. */

SELECT sales_rep_employee_number AS NoEmpleado, COUNT(DISTINCT customer_number) AS Noclientes,
CASE WHEN COUNT(DISTINCT customer_number) > 7 THEN "AltoRendimiento" END AS Etiqueta
FROM customers
GROUP BY sales_rep_employee_number
HAVING COUNT(DISTINCT customer_number) > 7;

/* 4. Selecciona el número de clientes en cada pais */
SELECT COUNT(DISTINCT customer_number) AS NoClientes, country AS Pais
FROM customers
GROUP BY country;

/* 5. Selecciona aquellos paises que tienen clientes de más de 3 ciudades distintas */
SELECT COUNT(DISTINCT city) AS ciudades_distintas, country AS Pais
FROM customers
GROUP BY country
HAVING ciudades_distintas >3;