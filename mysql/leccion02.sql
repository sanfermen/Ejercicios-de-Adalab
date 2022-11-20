# Añadir columna salario a employees
alter table employees
add column salario float;

# Modificar tipo de datos columna salario. De float a int
alter table employees
modify column salario int;

# Añadir restricción salario not null
alter table employees
drop column salario;

alter table employees
add column salario int not null;

alter table employees2
add column dni varchar(30);

alter table employees2
add constraint unique (dni);

alter table employees2
modify dni char not null;

drop table tabla1;
drop table if exists tabla1;

# crear tabla t1
create table t1 (
a int,
b char(10)
);

# 1. modificar nombre tabla t1 a t2
alter table t1 rename t2;
# 2. cambiar columna a a tipo tinyint not null
alter table t2
modify column a tinyint not null;
# 3. Cambiar la columna b a char(20) y renombrar a c
alter table t2 modify column b char(20), rename column a to c;
alter table t2 rename column c to a, rename column b to c;
# 4. Añadir una nueva columna d de tipo timestamp
alter table t2 add column d timestamp;
# 5. Añade una columna index llamada d y una clausula unique a la columna a
alter table t2 add index indice_d (d), modify column a tinyint not null unique;
# 6. Elimina la columna c que definiste en el ejercicio 3
alter table t2 drop column c;
# 7. Crea una tabla llamada t3 identica a la tabla t2
create table t3 like t2;
# 8. Elimina la tabla original t2 y en otra sentencia renombra la tabla t3 como t1.
drop table t2;
alter table t3 rename t1;




