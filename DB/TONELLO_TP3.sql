create database tp
use tp
CREATE TABLE Productos(
    Id BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(250) NOT NULL,
    URLImagen VARCHAR(1000) NOT NULL);

CREATE TABLE Clientes(
		Id BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
		DNI INT UNIQUE NOT NULL CHECK (DNI > 0),
		Nombre VARCHAR(50) NOT NULL ,
		Apellido VARCHAR(50) NOT NULL ,
		Email VARCHAR(100) NOT NULL ,
		Direccion VARCHAR(50) NOT NULL ,
		Ciudad VARCHAR(50) NOT NULL ,
		CodigoPostal VARCHAR(8) NOT NULL ,
		FechaRegistro DATETIME NOT NULL);

CREATE TABLE Vouchers(
    Id BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
    CodigoVoucher VARCHAR(32) UNIQUE,
    Estado BIT NOT NULL DEFAULT 0 CHECK (Estado IN (1, 0)),
    IdCliente BIGINT,
    IdProducto BIGINT,
    FechaRegistro DATETIME NULL);
