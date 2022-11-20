use tienda;

create schema creacion_tienda;
use creacion_tienda;

create table creacion_tienda.customers select * from tienda.customers;

create table creacion_tienda.employees select * from tienda.employees;

alter table customers add primary key (customer_number);

alter table employees add primary key (employee_number);

create table customers2 (
customer_number int NOT NULL,
customer_name varchar(50) not null,
contact_last_name varchar(50) not null,
contact_first_name varchar(50) not null,
phone varchar(9) not null,
address_line1 varchar(50) not null,
address_line2 varchar(50) not null,
city varchar(50) not null,
state varchar(50) default null,
postal_code varchar(5) default null,
country varchar(50) default 'Spain',
sales_rep_employee_number int default null,
credit_limit decimal(10,2) default null check (credit_limit > 0),
primary key (customer_number),
constraint fk_employees2 foreign key (sales_rep_employee_number)
references employees2 (employee_number)
);

