USE tienda;

/* Seleccionamos last name, first name y extension de la tabla employees */
SELECT last_name, first_name, extension
FROM employees;

/* Seleccionamos city y phone de la tabla offices para todos los registros que tengan country = USA */
SELECT city, phone
FROM offices
WHERE country = "USA";

/* Seleccionamos customer name y phone de la tabla customers para todos los registros que tengan city = NYC y country = USA*/
SELECT customer_name, phone
FROM customers
WHERE city = "NYC"
AND country = "USA";

/*Seleccionamos city y phone de la tabla offices para todos los registros que NO tengan country = USA */
SELECT city, phone
FROM offices
WHERE NOT country = "USA";

/* Seleccionamos customer name y phone de la tabla customers para todos los registros que tengan city = NYC O country = USA*/
SELECT customer_name, phone
FROM customers
WHERE city = "NYC"
OR country = "USA";

/* Seleccionamos product name y product line de la tabla products para todos los registros cuyo product line sea Motorcycles*/
SELECT product_name, product_line
FROM products
WHERE product_line = "Motorcycles";

/* Seleccionamos city y phone de la tabla offices para los registros con phone distinto a +1 650 219 4782 */
SELECT city, phone
FROM offices
WHERE phone <> "+1 650 219 4782";

/* Seleccionamos city y phone de la tabla offices para los registros con address line2 NULL */
SELECT city, phone
FROM offices
WHERE address_line2 IS NULL;

/* Seleccionamos city y phone de la tabla offices para los registros con address line2 NOT NULL */
SELECT city, phone
FROM offices
WHERE address_line2 IS NOT NULL;