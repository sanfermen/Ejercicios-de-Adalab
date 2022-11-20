CREATE TABLE empleadas (
    id_empleada INT NOT NULL,
    salario INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    pais VARCHAR(50)
    ) ;

alter table empleadas add primary key (id_empleada);

create table empleadas_en_proyectos (
id_empleada INT NOT NULL,
id_proyecto INT NOT NULL,
primary key (id_proyecto),
constraint fk_empleadas foreign key (id_empleada)
references empleadas (id_empleada)
);

alter table empleadas_en_proyectos
drop constraint fk_empleadas;

alter table empleadas_en_proyectos
add constraint fk_empleadas foreign key (id_empleada)
references empleadas (id_empleada) on delete cascade;

create table employees2 (
employee_number int not null,
last_name varchar(50) character set latin1 not null,
first_name varchar(50) character set latin1 not null,
extension varchar(10) character set latin1 not null,
email varchar(100) character set latin1 not null,
office_code varchar(10) character set latin1 not null,
reports_to int default null,
job_title varchar(50) character set latin1 not null,
primary key (employee_number)
);




 
