drop database llavespk_fk;
create database llavespk_fk;
	use llavespk_fk;

create table USER(
id_cliente int not null,
p_nom varchar(25) not null,
s_nom varchar(25) not null,
p_apellido varchar(25) not null,
s_apellido varchar(25) not null,
telefono int not null,
correo varchar(35) not null,
primary key (id_cliente)
);
create table Vendedores_has_USER (
vendedores_id_vendedores int not null,
cliente_id_cliente varchar(20) not null,
primary key  (vendedores_id_vendedores,cliente_id_cliente)
);

create table Vendedores (
ID_vendedores int not null,
NOM_vendedor varchar(20) not null,
Salario_vendedor int not null,
P_Nom_Ven varchar(20) not null,
S_Nom_Ven varchar(24) not null,
P_Ape_Ven varchar(25) not null,
S_Ape_Ven varchar(25) not null,
primary key  (ID_vendedores)
);
create table Mascota (
COD_Mascota int not null,
Nom_Mascota varchar(20) not null,
P_color varchar(25) not null,
S_color varchar(25) not null,
primary key(COD_Mascota)
);
create table USER_has_mascota (
cliente_id_cliente1 int not null,
Mascota_cod_mascota varchar(20) not null,
primary key  (cliente_id_cliente1)
);
create table Raza (
ID_Raza int not null,
Tipos_Raza varchar(20) not null,
primary key(ID_Raza)
);
create table producto (
id_producto int not null,
nom_producto varchar(20) not null,
precio_producto int not null,
cant_producto int not null,
primary key (id_producto)
);
create table Productos_has_USER (
producto_id_vendedores int not null,
cliente_id_cliente varchar(20) not null,
primary key  (Producto_id_vendedores)
);
alter table Productos_has_USER add
constraint Productos_has_USER
foreign key (producto_id_vendedores)
references  producto(id_producto);

alter table cliente_has_mascota add
constraint fpk_cliente_mascota
foreign key (cliente_id_cliente1)
references USER (id_cliente);

alter table Vendedores_has_USER add
constraint fpk_Vendedores_user
foreign key (vendedores_id_vendedores)
references USER (id_cliente);

alter table USER_has_mascota add
constraint fpk_Mascota_cliente
foreign key (Mascota_cod_mascota)
references Mascota (COD_Mascota);