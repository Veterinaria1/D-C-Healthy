drop database ejemplo_Mario;
create database ejemplo_Mario;
	use ejemplo_Mario;

create table Persona(
tdoc_persona varchar(10) not null,
rh_cliente varchar (10) not null,
cargo varchar (15) not null,
id_persona int not null,
nombre varchar(20) not null,
Apellido varchar(20) not null,
direccion varchar(40) not null,
edad int(3) not null,
primary key (id_persona, tdoc_persona)
);

create table tipo_Documento(
tdoc varchar(10) not null,
Desc_tdoc varchar(20) not null,
primary key (tdoc)
);

create table rh(
	tipo_rh varchar (10) not null,
	estado boolean null,
	primary key (tipo_rh)
);

create table Roles(
	Rol varchar (20) not null,
	estado_rol boolean not null,
	primary key (Rol)
);

create table Roles_has_User(
	Fkpk_rol varchar (20) not null,
	Fkpk_t_doc varchar (10) not null,
	Fkpk_n_documento int (25) not null,
	primary key (Fkpk_rol, Fkpk_t_doc, Fkpk_n_documento)
    
);
alter table persona add
foreign key (tdoc_persona)
references tipo_Documento (tdoc);

insert into tipo_Documento (tdoc, Desc_tdoc)
values
    ("cc" , "Cedula de ciudadania"),
    ("ce" , "Cedula de extranjeria"),
    ("ti" , "Tarjeta de identidad"),
    ("nit" , "Numero de identificacion tributaria");

    
INSERT into persona 
values("cc", "o+", "cliente", 1013576811, "Andres Felipe", "Orjuela Arias","Cll 95 sur #5G 12 este", 19);
INSERT into persona 
values("ce","o+","cliente", 1001096125, "Samuel Esteban", "Castaño Gonzalez","Cll 152A 99-60", 20);
INSERT into persona 
values("ti","o+","cliente", 1012316243, "andres felipe", "monroy moreno","dg 74 sur #78i39", 17);
INSERT into persona 
values("nit","o+","cliente", 1016942358, "Juan David ", "Camargo Useche"," Cll 4A #93 sur 34 ", 18);
INSERT into persona 
values("nit","o+","cliente", 1034656167, "Heelen Lizeth ", "Cano Moreno "," Cll 78 #78-71 sur ", 16);
INSERT into persona 
values("cc","o+","cliente", 1192831945, "Maria Paula ", "Patiño Aparicio "," calle 130 d bis # 99 - 27", 19);
INSERT into persona 
values("ce","o+","cliente", 1016943117, "José Manuel", "Posada Restrepo","calle 6a #94a 25", 22);
INSERT into persona 
values("ti","o+","cliente", 1010051342, "Yasmin Lucia", "Moreno Suarez"," Cll 104 #5-62 Sur", 15);
INSERT into persona 
values("cc","o+","vendedor", 1006051207, "Camilo Andres ", "Osorio colmenares "," Cll130#94-08", 19);
INSERT into persona 
values("nit","o+","cliente", 1014176160, "Paula Alejandra", "Cuéllar Rodríguez","Carrera 18 G# 15 35", 17);
INSERT into persona 
values("ce","o+","cliente", 1000350620, "Esteban David", "Pedrozo Aldana","Ac 68 sur No 69-45", 20);
INSERT into persona 
values("ti","o+","cliente", 1019602056, "Jenifer Carolina", "Russi Benavides","Calle79 sur #3-05", 16);
INSERT into persona 
values("cc","o+","cliente", 1016942409, "Brayan  Andres", "Puello Sanchez","Calle 70 a # 122 a 76", 18);
INSERT into persona 
values("ce","o+","vendedor", 1000464506, "Sebastian Danilo", "Correa Boyaca","Carrera 87 #129c 19 Interior 8", 24);
INSERT into persona 
values("ce","o+","cliente", 1023903053, "Gary Daniela", "Vargas Saenz ","cr 8 este # 9-28 sur", 25);
INSERT into persona 
values("ti","o+","cliente", 1023903054, "Carlos Alfredo", "López Garzón","Cra 2 este #79-08 Sur", 16);
INSERT into persona 
values("cc","o+","vendedor", 1005573490, "Mario andres", "Velez Bravo ","Cl. 129a #94c-56 a 94c", 18);
INSERT into persona 
values("nit","o+","cliente", 1007105324, "Valentina ", "Grillo Martinez ","Calle 107 Sur #4-59", 16);
INSERT into persona 
values("cc","o+","cliente", 1022922706, "Valeria ", "Criollo Cardenas ","Cra 11 # 65-70 sur Int 3", 19);
INSERT into persona 
values("ti","o+","cliente", 1000807149, "Daniela Valentina ", "Fonseca Díaz   ","Cra 47b#71-28 sur", 16);
INSERT into persona 
values("cc","o+","cliente", 1003540758, "Kevin ", "Pulido Delgado","Cra 4#91-75 sur", 18);
INSERT into persona 
values("nit","o+","cliente", 1000036556, "Juan Pablo ", "Contreras Lopez","Calle 128 b bis a #91-67", 15);
INSERT into persona 
values("cc","o+","cliente", 1013099140, "Milton Stiven ", "Gonzalez Pinzon","Cra 72 #76 a 45 sur", 19);
INSERT into persona 
values("ce","o+","vendedor", 1001117202, "Sharon Guissell ", "Quintero Espinel ","carrera 121 N 128 B 21 ", 20);
INSERT into persona 
values("ti","o+","cliente", 1000157790, "Ivan Mauricio", "Cuervo Campos","cra 14 # 91a 71 sur", 16);
INSERT into persona 
values("nit","o+","cliente", 1000215896, "Jhoan Daniel", "Mendez Castañeda ","Cl. 136  #101 b15 ", 15);
INSERT into persona 
values("ce","o-","cliente", 1016833038, "Derly Alexandra", "Rojas Morales","Cll. 116A #9A-41 Este", 24);

-- 1 Personas Mayores de edad

select *
from persona
where edad >17
order by edad asc
;
select *
from persona
where edad >=18

order by edad asc;

-- 3 Mayores de 20 años

select  tdoc_persona, id_persona, nombre, Apellido, direccion, edad
from persona
 where edad >=20;

-- 4 Personas menores de 25 años

select  tdoc_persona, id_persona, nombre, Apellido, direccion, edad
from persona
 where edad <25;


-- 5 Entre 20 y 30 años

select *
from persona
 where edad >=20 and edad <=30;
 select * 
 from persona
 where edad between "20" and "30" ;

 -- 6 Todas las persona que tengan direccion

select  *
from persona
where direccion
 LIKE "%cra%";

select  tdoc_persona, id_persona, nombre, Apellido, direccion, edad
from persona
where direccion
 LIKE "%cra%";

 -- 8 Todas Personas que se llamen Andres

select id_persona, nombre, Apellido, edad
from persona
where nombre
LIKE "%Andres%" or nombre LIKE "%Andres%" ;

-- 9 Consulta las personas que se llamen Andresy Paula

select * 
from persona
where apellido
LIKE "%Andres%" or apellido 
LIKE "%Paula%";

-- 10 Consulta todas las personas que su apellido empiece por C y R  
select *
from Persona
where apellido
LIKE "C%" or apellido 
LIKE "R";

-- 11 Consulta todas las personas que su apellido empiece por L y J

select *
from persona
where nombre
LIKE "a%" or nombre LIKE "j%";

-- 12 Consulta todas las personas que su apellido empiece por L y J

select * from persona where (nombre LIKE "%Paula%" or nombre LIKE "%Felipe%") and (apellido LIKE "C%" or apellido like "M%");

select Desc_tdoc , id_persona, nombre, apellido, cargo
from tipo_Documento
JOIN persona ON tdoc_persona=tdoc
where Desc_tdoc = 'Cedula de ciudadania' or Desc_tdoc = 'Tarjeta de identidad' or Desc_tdoc = 'Numero de identificacion tributaria';


select Desc_tdoc , id_persona, nombre, direccion
from tipo_Documento
JOIN persona ON tdoc_persona=tdoc
where Desc_tdoc = 'Cedula de ciudadania' or Desc_tdoc = 'Tarjeta de identidad' or Desc_tdoc = 'Numero de identificacion tributaria';



select Desc_tdoc , id_persona, nombre, apellido, edad
from tipo_Documento
JOIN persona ON tdoc_persona=tdoc
where Desc_tdoc = 'Cedula de ciudadania' or Desc_tdoc = 'Tarjeta de identidad' or Desc_tdoc = 'Numero de identificacion tributaria';


select Desc_tdoc , id_persona, nombre, apellido, rh_cliente
from tipo_Documento
JOIN persona ON tdoc_persona=tdoc
where Desc_tdoc = 'Cedula de ciudadania' or Desc_tdoc = 'Tarjeta de identidad' or Desc_tdoc = 'Numero de identificacion tributaria';

