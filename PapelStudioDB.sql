create database PapelStudio
go

use PapelStudio

-- Tablas independientes 
create table Estado
(
	EstadoId int primary key identity(1,1),
	Nombre varchar(25) not null
);

create table Cargo
(
	CargoId int primary key identity(1,1),
	Nombre varchar(25) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Categoria(
	CategoriaId int primary key identity(1,1),
	Nombre varchar(25) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Marca(
	MarcaId int primary key identity(1,1),
	Nombre varchar(25) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);


create table EstadoCompraVenta(
	EstadoCompraVentaId int primary key identity(1,1),
	Nombre varchar(25) not null
);

create table Rol(
	RolId int primary key identity(1,1),
	Nombre varchar(25) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table TipoDoc(
	TipoDocId int primary key identity(1,1),
	Nombre varchar(25) not null
);

create table TipoPago(
	TipoPagoId int primary key identity(1,1),
	Nombre varchar(25) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Turno(
	TurnoId int primary key identity(1,1),
	Horario varchar(25) not null
);

create table EncabezadoFactura(
	EncabezadoFacturaId int primary key identity(1,1),
	Titulo varchar(200) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

-- Tablas 
create table Empleado(
	EmpleadoId int primary key identity(1,1),
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	NumDoc varchar(15) not null,
	TipoDocId int not null foreign key(TipoDocId) references TipoDoc(TipoDocId),
	Direccion varchar(200) not null,
	TurnoId int not null foreign key(TurnoId) references Turno(TurnoId),
	Telefono varchar(15) not null,
	CargoId int not null foreign key(CargoId) references Cargo(CargoId),
	Correo varchar(150),
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Usuario(
	UserName varchar(50) primary key not null,
	Contraseña varchar(100) not null,
	FechaRegistro datetime not null,
	EmpleadoId int not null foreign key(EmpleadoId) references Empleado(EmpleadoId),
	RolId int not null foreign key(RolId) references Rol(RolId),
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Producto(
	ProductoId int primary key identity(1,1),
	Nombre varchar(30) not null,
	Codigo varchar(30) not null,
	Descripcion varchar(200),
	CategoriaId int not null foreign key(CategoriaId) references Categoria(CategoriaId),
	MarcaId int not null foreign key(MarcaId) references Marca(MarcaId),
	Precio money not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Proveedor(
	ProveedorId int primary key identity(1,1),
	Nombre varchar(50) not null,
	Telefono varchar(15) not null,
	Contacto varchar(30) not null,
	Direccion varchar(250) not null,
	PagWeb varchar(150) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Inventario(
	ProductoId int not null foreign key(ProductoId) references Producto(ProductoId),
	Cantidad int not null
);

create table Compra(
	CompraId int primary key identity(1,1),
	FechaHora datetime not null,
	Descripcion varchar(200) not null,
	Total money not null,
	EstadoCompraVentaId int not null foreign key(EstadoCompraVentaId) references EstadoCompraVenta(EstadoCompraVentaId),
	ProveedorId int not null foreign key(ProveedorId) references Proveedor(ProveedorId),
	UserName varchar(50) not null foreign key(UserName) references Usuario(UserName)
);

create table DetCompra(
	DetCompraId int primary key identity(1,1),
	CompraId int not null foreign key(CompraId) references Compra(CompraId),
	ProductoId int not null foreign key(ProductoId) references Producto(ProductoId),
	Cantidad int not null,
	PrecioUnit money not null,
	Monto money not null
);

create table Cliente(
	ClienteId int primary key identity(1,1),
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	NumDoc varchar(50) not null,
	TipoDocId int not null foreign key(TipoDocId) references TipoDoc(TipoDocId),
	Correo varchar(150) not null,
	EstadoId int not null foreign key(EstadoId) references Estado(EstadoId)
);

create table Venta(
	VentaId int primary key identity(1,1),
	FechaHora datetime not null,
	Observación varchar(20),
	EstadoCompraVentaId int not null foreign key(EstadoCompraVentaId) references EstadoCompraVenta(EstadoCompraVentaId),
	ClienteId int foreign key(ClienteId) references Cliente(ClienteId),
	Total money not null,
	UserName varchar(50) not null foreign key(UserName) references Usuario(UserName),
	TipoPagoId int not null foreign key(TipoPagoId) references TipoPago(TipoPagoId)
);

create table DetVenta(
	DetVentaId int primary key identity(1,1),
	VentaId int not null foreign key(VentaId) references Venta(VentaId),
	ProductoId int not null foreign key(ProductoId) references Producto(ProductoId),
	Cantidad int not null,
	PrecioUnit money not null,
	Monto money not null
);

create table Logs(
	LogsId int primary key identity(1,1),
	Fecha datetime not null,
	Tabla varchar(50) not null,
	RegistroId int,
	Accion varchar(5) not null,
	Descripcion varchar(250),
	UserName varchar(50) not null foreign key(UserName) references Usuario(UserName),
	constraint ck_Accion check (Accion in ('I','U','D')) --Crea una restriccion de los datos que dentraran 
);


create table Arqueo(
	ArqueoId int primary key identity(1,1),
	Fecha datetime not null,
	UserName varchar(50) not null foreign key (UserName) references Usuario(UserName),
	UsuarioAutorizado varchar(50) not null foreign key (UserName) references Usuario(UserName),
	FondoInicial money not null,
	FondoCierre money not null,
	Billete_$100 int not null,
	Billete_$50 int not null,
	Billete_$20 int not null,
	Billete_$10 int not null,
	Billete_$5 int not null,
	Billete_$1  int not null,
	Moneda_$1 int not null,
	Moneda_$25cent int not null,
	Moneda_$10cent int not null,
	Moneda_$5cent int not null,
	Moneda_$1cent int not null,
	TotalFondo money not null
);


--Tabla Factura

CREATE TABLE Factura (
    FacturaId int PRIMARY KEY IDENTITY(1,1),
    FechaEmision datetime NOT NULL,
    Total money NOT NULL,
    ClienteId int NOT NULL FOREIGN KEY (ClienteId) REFERENCES Cliente(ClienteId),
    UserName varchar(50) NOT NULL FOREIGN KEY (UserName) REFERENCES Usuario(UserName),
    EstadoCompraVentaId int NOT NULL FOREIGN KEY (EstadoCompraVentaId) REFERENCES EstadoCompraVenta(EstadoCompraVentaId),
    Observacion varchar(255) NULL
);


CREATE TABLE DetalleFactura (
    DetalleFacturaId int PRIMARY KEY IDENTITY(1,1),
    FacturaId int NOT NULL FOREIGN KEY (FacturaId) REFERENCES Factura(FacturaId),
    ProductoId int NOT NULL FOREIGN KEY (ProductoId) REFERENCES Producto(ProductoId),
    Cantidad int NOT NULL,
    PrecioUnit money NOT NULL,
    Monto money NOT NULL
);


DECLARE @FacturaId int = 1;  -- Cambia este valor por el ID de la factura que deseas imprimir

SELECT 
    f.FacturaId,
    f.FechaEmision,
    f.Total,
    c.Nombre AS Nombre,
    c.Apellido AS Apellido,
    u.UserName AS Usuario,
    d.ProductoId,
    p.Nombre AS Producto,
    d.Cantidad,
    d.PrecioUnit,
    d.Monto
FROM 
    Factura f
JOIN 
    DetalleFactura d ON f.FacturaId = d.FacturaId
JOIN 
    Cliente c ON f.ClienteId = c.ClienteId
JOIN 
    Usuario u ON f.UserName = u.UserName
JOIN 
    Producto p ON d.ProductoId = p.ProductoId
WHERE 
    f.FacturaId = @FacturaId;  -- Filtra por el ID de la factura que deseas imprimir
