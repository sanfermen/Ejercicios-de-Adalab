create table if not exists customers_mod
select *
from customers;

insert into customers_mod (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
values (343, 'Adalab', 'Rodriguez', 'Julia', '672986373', 'Calle Falsa 123', 'Puerta 42', 'Madrid', 'España', '28000', 'España', 15, 20000000);

insert into customers_mod (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
values (344, 'La pegatina After', 'Santiago', 'Maricarmen', '00000000', 'Travesía del rave', NULL, 'Palma de Mallorca', NULL, '07005', 'España', 10, 45673453);

insert into customers_mod (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
values (500, 'Sandra', 'Fernandez', NULL, '12345678', 'Calle calle', NULL, 'Algorta', NULL, '48991', NULL, 34, 45352343),
(502, 'Juan', 'Ruiz', NULL, '78596845', 'Al lado', '45', 'Berango', 'Bizkaia', NULL, 'Francia', 98, 342345987),
(501, 'Ibai', 'Menéndez', NULL, '342098978', 'De arriba', NULL, 'Gijón', 'Asturias', '33203', 'Holanda', 23, 34123212312),
(543, 'Enara', 'Pavón', 'Fernández', '43233333', 'ojijiei', 'noee', 'Madrid', 'Madrid', '28987', 'España', 23, 4534234),
(342, 'Paco', 'Perez', NULL, '4989898', 'calle', 'numero', 'ciudad', 'provincia', '45434', NULL, 34, 342);

update customers_mod
set address_line1 = 'Polígono industrial de Son Castelló', address_line2 = 'Nave 92', city = 'Palma de Mallorca', state = 'España', postal_code = '28123',
country = 'España', sales_rep_employee_number = 25, credit_limit = 5000000
where customer_number = 344;

update customers_mod
set sales_rep_employee_number = 2
order by customer_number desc
limit 10;

update customers_mod
set sales_rep_employee_number = 2
order by customer_number asc
limit 10;

/* MALLLLLLL!!!!!*/
delete from customers_mod
order by credit_limit desc
limit 5;

delete from customers_mod
order by credit_limit asc
limit 5;

delete from customers_mod;
