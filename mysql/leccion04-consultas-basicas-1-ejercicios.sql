USE tienda;

/* 1. Consulta SELECT que obtenga los nombres, teléfonos y direcciones de todas las empresas de la tabla customers. */
SELECT customer_name, phone, address_line1, address_line2
FROM customers;

/* 2. Consulta que obtenga los teléfonos y direcciones de aquellas empresas de la tabla customers que se encuentren en USA */
SELECT phone, address_line1, address_line2
FROM customers
WHERE country = "USA";

/* 3. Consulta que obtenga los nombres y apellidos de las personas de contacto en cada empresa que no tenga segunda línea de dirección. */
SELECT contact_last_name, contact_first_name
FROM customers
WHERE address_line2 IS NULL;

/* 4. Busca registros de la tabla customers que tengan un valor guardado en el campo state. */
SELECT *
FROM customers
WHERE state IS NOT NULL;

/* 5. Busca aquellos registros de la tabla customers que correspondan a clientes de USA pero que no tengan guardado un valor para el campo state. */
SELECT *
FROM customers
WHERE country = "USA"
AND state IS NOT NULL;

/* 6. Selecciona el país correspondiente a los registros de clientes con un limite de crédito mayor que $10000*/
SELECT country
FROM customers
WHERE credit_limit > 10000;
