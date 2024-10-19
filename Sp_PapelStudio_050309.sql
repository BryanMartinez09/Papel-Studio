use PapelStudio
go
--ESTADO--
create procedure sp_EstadoInsert
	@Nombre varchar(25)
as 
	begin
		insert into Estado(Nombre) values (@Nombre)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoDelete
	@EstadoId int
as
	begin
		delete from Estado where EstadoId = @EstadoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoUpdate
	@EstadoId int,
	@Nombre varchar(25)
as
	begin
		update Estado set Nombre = @Nombre
		where EstadoId = @EstadoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoSelectAll
as
	begin
		select*from Estado 
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoSelectById
	@EstadoId int
as
	begin
		select * from Estado where EstadoId = @EstadoId;
	end
go
--------------------------------------------------------------------------------------------------------
--CARGO--
create procedure sp_CargoInsert
	@Nombre varchar(25),
	@EstadoId int
as 
	begin
		insert into Cargo(Nombre, EstadoId) values (@Nombre, @EstadoId)
	end
go

--------------------------------------------------------------------------------------------------------
create procedure sp_CargoDelete
	@CargoId int
as
	begin
		update Cargo
		set EstadoId = 2
		where CargoId = @CargoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CargoUpdate
	@CargoId int,
	@Nombre varchar(25),
	@EstadoId int
as
	begin
		update Cargo set Nombre = @Nombre, EstadoId = @EstadoId
		where CargoId = @CargoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CargoSelectAll
as
	begin
		select*from Cargo order by EstadoId 
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CargoSelectById
	@CargoId int
as
	begin
		select * from Cargo where CargoId = @CargoId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
--CATEGORIA--
create procedure sp_CategoriaInsert
	@Nombre varchar(25),
	@EstadoId int
as 
	begin
		insert into Categoria(Nombre, EstadoId) values (@Nombre, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CategoriaDelete
	@CategoriaId int
as
	begin
		update Categoria
		set EstadoId = 2
		where CategoriaId = @CategoriaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CategoriaUpdate
	@CategoriaId int,
	@Nombre varchar(25),
	@EstadoId int
as
	begin
		update Categoria set Nombre = @Nombre, EstadoId = @EstadoId
		where CategoriaId = @CategoriaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CategoriaSelectAll
as
	begin
		select*from Categoria order by EstadoId asc
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CategoriaSelectById
	@CategoriaId int
as
	begin
		select * from Categoria where CategoriaId = @CategoriaId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
--MARCA--
create procedure sp_MarcaInsert
	@Nombre varchar(25),
	@EstadoId int
as 
	begin
		insert  Marca(Nombre, EstadoId) values (@Nombre, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_MarcaDelete
	@MarcaId int
as
	begin
		update Marca
		set EstadoId = 2
		where MarcaId = @MarcaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_MarcaUpdate
	@MarcaId int,
	@Nombre varchar(25),
	@EstadoId int
as
	begin
		update Marca set Nombre = @Nombre, EstadoId = @EstadoId
		where MarcaId = @MarcaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_MarcaSelectAll
as
	begin
		select*from Marca order by EstadoId asc
	end
go


--------------------------------------------------------------------------------------------------------
create procedure sp_MarcaSelectById
	@MarcaId int
as
	begin
		select * from Marca where MarcaId = @MarcaId order by EstadoId asc;
	end
go

--------------------------------------------------------------------------------------------------------
--ESTADO COMPRA VENTA--
create procedure sp_EstadoCompraVentaInsert
	@Nombre varchar(25)
as 
	begin
		insert into EstadoCompraVenta(Nombre) values (@Nombre)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoCompraVentaDelete
	@EstadoCompraVentaId int
as
	begin
		delete from EstadoCompraVenta where EstadoCompraVentaId = @EstadoCompraVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoCompraVentaUpdate
	@EstadoCompraVentaId int,
	@Nombre varchar(25)
as
	begin
		update EstadoCompraVenta set Nombre = @Nombre
		where EstadoCompraVentaId = @EstadoCompraVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoCompraVentaSelectAll
as
	begin
		select*from EstadoCompraVenta
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EstadoCompraVentaSelectById
	@EstadoCompraVentaId int
as
	begin
		select * from EstadoCompraVenta where EstadoCompraVentaId = @EstadoCompraVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
--ROL--
create procedure sp_RolInsert
	@Nombre varchar(25),
	@EstadoId int
as 
	begin
		insert into Rol(Nombre, EstadoId) values (@Nombre, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_RolDelete
	@RolId int
as
	begin
		update Rol
		set EstadoId = 2
		where RolId = @RolId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_RolUpdate
	@RolId int,
	@Nombre varchar(25),
	@EstadoId int
as
	begin
		update Rol set Nombre = @Nombre, EstadoId = @EstadoId
		where RolId = @RolId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_RolSelectAll
as
	begin
		select*from Rol order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_RolSelectById
	@RolId int
as
	begin
		select * from Rol where RolId = @RolId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
--TIPO DOCUMENTO--
create procedure sp_TipoDocInsert
	@Nombre varchar(25)
as 
	begin
		insert into TipoDoc(Nombre) values (@Nombre)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoDocDelete
	@TipoDocId int
as
	begin
		delete from TipoDoc where TipoDocId = @TipoDocId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoDocUpdate
	@TipoDocId int,
	@Nombre varchar(25)
as
	begin
		update TipoDoc set Nombre = @Nombre
		where TipoDocId = @TipoDocId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoDocSelectAll
as
	begin
		select*from TipoDoc
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoDocSelectById
	@TipoDocId int
as
	begin
		select * from TipoDoc where TipoDocId = @TipoDocId;
	end
go
--------------------------------------------------------------------------------------------------------
--TIPO DE PAGO--
create procedure sp_TipoPagoInsert
	@Nombre varchar(25),
	@EstadoId int
as 
	begin
		insert into TipoPago(Nombre, EstadoId) values (@Nombre, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoPagoDelete
	@TipoPagoId int
as
	begin
		update TipoPago
		set EstadoId = 2
		where TipoPagoId = @TipoPagoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoPagoUpdate
	@TipoPagoId int,
	@Nombre varchar(25),
	@EstadoId int
as
	begin
		update TipoPago set Nombre = @Nombre, EstadoId = @EstadoId
		where TipoPagoId = @TipoPagoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoPagoSelectAll
as
	begin
		select*from TipoPago order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TipoPagoSelectById
	@TipoPagoId int
as
	begin
		select * from TipoPago where TipoPagoId = @TipoPagoId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
--TURNO--
create procedure sp_TurnoInsert
	@Horario varchar(25)
as 
	begin
		insert into Turno(Horario) values (@Horario)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TurnoDelete
	@TurnoId int
as
	begin
		delete from Turno where TurnoId = @TurnoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TurnoUpdate
	@TurnoId int,
	@Horario varchar(25)
as
	begin
		update Turno set Horario = @Horario
		where TurnoId = @TurnoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TurnoSelectAll
as
	begin
		select*from Turno
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_TurnoSelectById
	@TurnoId int
as
	begin
		select * from Turno where TurnoId = @TurnoId;
	end
go
--------------------------------------------------------------------------------------------------------

--ENCABEZADO DE FACTURA--
create procedure sp_EncabezadoFacturaInsert
	@Titulo varchar(200),
	@EstadoId int
as 
	begin
		insert into EncabezadoFactura(Titulo, EstadoId) values (@Titulo, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EncabezadoFacturaDelete
	@EncabezadoFacturaId int
as
	begin
		update EncabezadoFactura
		set EstadoId= 2
		where EncabezadoFacturaId = @EncabezadoFacturaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EncabezadoFacturaUpdate
	@EncabezadoFacturaId int,
	@Titulo varchar(200),
	@EstadoId int
as
	begin
		update EncabezadoFactura set Titulo = @Titulo, EstadoId = @EstadoId
		where EncabezadoFacturaId = @EncabezadoFacturaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EncabezadoFacturaSelectAll
as
	begin
		select*from EncabezadoFactura order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EncabezadoFacturaSelectById
	@EncabezadoFacturaId int
as
	begin
		select * from EncabezadoFactura where EncabezadoFacturaId = @EncabezadoFacturaId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
--EMPLEADO--
create procedure sp_EmpleadoInsert
	@Nombre varchar(50),
	@Apellido varchar(50),
	@NumDoc varchar(15),
	@TipoDocId int,
	@Direccion varchar(200),
	@TurnoId int,
	@Telefono varchar(15),
	@CargoId int,
	@Correo varchar(150),
	@EstadoId int
as 
	begin
		insert into Empleado(Nombre, Apellido, NumDoc, TipoDocId, Direccion, TurnoId, Telefono, CargoId, Correo, EstadoId) 
			values (@Nombre, @Apellido, @NumDoc, @TipoDocId, @Direccion, @TurnoId, @Telefono, @CargoId, @Correo, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EmpleadoDelete
	@EmpleadoId int
as
	begin
		update Empleado
		set EstadoId = 2
		where EmpleadoId = @EmpleadoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EmpleadoUpdate
	@EmpleadoId int,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@NumDoc varchar(15),
	@TipoDocId int,
	@Direccion varchar(200),
	@TurnoId int,
	@Telefono varchar(15),
	@CargoId int,
	@Correo varchar(150),
	@EstadoId int
as
	begin
		update Empleado set 
		Nombre=@Nombre,
		Apellido= @Apellido,
		NumDoc=@NumDoc,
		TipoDocId= @TipoDocId,
		Direccion=@Direccion,
		TurnoId=@TurnoId,
		Telefono=@Telefono,
		CargoId= @CargoId,
		Correo=@CargoId,
		EstadoId=@EstadoId
		where EmpleadoId = @EmpleadoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EmpleadoSelectAll
as
	begin
		select*from Empleado order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_EmpleadoSelectById
	@EmpleadoId int
as
	begin
		select * from Empleado where EmpleadoId = @EmpleadoId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
--USUARIO--
create procedure sp_UsuarioInsert
	@UserName varchar(50),
	@Contraseña varchar(100),
	@FechaRegistro datetime,
	@EmpleadoId int,
	@RolId int,
	@EstadoId int
as 
	begin
		insert into Usuario(UserName, Contraseña, FechaRegistro, EmpleadoId, RolId, EstadoId) 
			values (@UserName, @Contraseña, @FechaRegistro, @EmpleadoId, @RolId, @EstadoId);
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_UsuarioDelete
	@UserName varchar(50)
as
	begin
		update Usuario
		set EstadoId = 2
		where UserName = @UserName;
	end
go
--------------------------------------------------------------------------------------------------------
alter procedure sp_UsuarioUpdate
	@UserName varchar(50),
	@Contraseña varchar(100),
	@FechaRegistro datetime,
	@EmpleadoId int,
	@RolId int,
	@EstadoId int
as
	begin
		update Usuario set 
		Contraseña = @Contraseña,
		FechaRegistro = @FechaRegistro,
		EmpleadoId =@EmpleadoId,
		RolId = @RolId,
		EstadoId =@EstadoId 
		where UserName = @UserName;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_UsuarioSelectAll
as
	begin
		select*from Usuario order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_UsuarioSelectById
	@UserName varchar(50),
	@Contraseña varchar(100)
as
	begin
		select * from Usuario where UserName = @UserName and Contraseña = @Contraseña
	end
go
--------------------------------------------------------------------------------------------------------
--PRODUCTO--
create procedure sp_ProductoInsert
	@Nombre varchar(30),
	@Codigo varchar(30),
	@Descripcion varchar(200),
	@CategoriaId int,
	@MarcaId int,
	@Precio money,
	@EstadoId int
as 
	begin
		insert into Producto(Nombre, Codigo, Descripcion, CategoriaId, MarcaId, Precio, EstadoId) 
			values (@Nombre, @Codigo, @Descripcion, @CategoriaId, @MarcaId, @Precio, @EstadoId);
	end

select SCOPE_IDENTITY();
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProductoDelete
	@ProductoId int
as
	begin
		update Producto
		set EstadoId = 2
		where ProductoId = @ProductoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProductoUpdate
	@ProductoId int,
	@Nombre varchar(30),
	@Codigo varchar(30),
	@Descripcion varchar(200),
	@CategoriaId int,
	@MarcaId int,
	@Precio money,
	@EstadoId int
as
	begin
		update Producto set 
		Nombre=@Nombre,
		Codigo= @Codigo,
		Descripcion=@Descripcion,
		CategoriaId= @CategoriaId,
		MarcaId=@MarcaId,
		Precio=@Precio,
		EstadoId=@EstadoId
		where ProductoId = @ProductoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProductoSelectAll
as
	begin
		select*from Producto order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProductoSelectById
	@ProductoId int
as
	begin
		select * from Producto where ProductoId = @ProductoId order by EstadoId asc;
	end
go

create proc sp_ProductoUpdateCode
	@ProductoId int,
	@Codigo varchar(30)
as
begin
	Update Producto set Codigo = @Codigo where ProductoId = @ProductoId
end
--------------------------------------------------------------------------------------------------------
--PROVEEDOR--
create procedure sp_ProveedorInsert
	@Nombre varchar(30),
	@Telefono varchar(15),
	@Contacto varchar(30),
	@Direccion varchar(250),
	@PagWeb varchar(150),
	@EstadoId int
as 
	begin
		insert into Proveedor(Nombre, Telefono, Contacto, Direccion, PagWeb, EstadoId) 
			values (@Nombre, @Telefono, @Contacto, @Direccion, @PagWeb, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProveedorDelete
	@ProveedorId int
as
	begin
		update Proveedor
		set EstadoId = 2
		where ProveedorId = @ProveedorId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProveedorUpdate
	@ProveedorId int,
	@Nombre varchar(30),
	@Telefono varchar(15),
	@Contacto varchar(30),
	@Direccion varchar(250),
	@PagWeb varchar(150),
	@EstadoId int
as
	begin
		update Proveedor set 
		Nombre=@Nombre,
		Telefono= @Telefono,
		Contacto=@Contacto,
		Direccion= @Direccion,
		PagWeb=@PagWeb,
		EstadoId=@EstadoId
		where ProveedorId = @ProveedorId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProveedorSelectAll
as
	begin
		select*from Proveedor order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ProveedorSelectById
	@ProveedorId int
as
	begin
		select * from Proveedor where ProveedorId = @ProveedorId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
 --INVENTARIO--
create procedure sp_InventarioInsert
	@ProductoId int
as 
	begin
		insert into Inventario(ProductoId) 
			values (@ProductoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_InventarioDelete
	@ProductoId int
as
	begin
		delete from Inventario where ProductoId = @ProductoId;
	end
go
--------------------------------------------------------------------------------------------------------

create procedure sp_InventarioCompra
	@ProductoId int,
	@Cantidad int
as
	begin
		update Inventario set 
		Cantidad = (Cantidad + @Cantidad)
		where ProductoId = @ProductoId;
	end
go

create procedure sp_InventarioVenta
	@ProductoId int,
	@Cantidad int
as
	begin
		update Inventario set 
		Cantidad = (Cantidad - @Cantidad)
		where ProductoId = @ProductoId;
	end
go

create procedure sp_InventarioCompra
	@ProductoId int,
	@Cantidad int
as
	begin
		update Inventario set 
		Cantidad = (Cantidad + @Cantidad)
		where ProductoId = @ProductoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_InventarioSelectAll
as
	begin
		select*from Inventario
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_InventarioSelectById
	@ProductoId int
as
	begin
		select * from Inventario where ProductoId = @ProductoId;
	end
go
--------------------------------------------------------------------------------------------------------
 --COMPRA--
alter procedure sp_CompraInsert
	@FechaHora datetime,
	@Descripcion varchar(200),
	@Total money,
	@EstadoCompraVentaId int ,
	@ProveedorId int,
	@UserName varchar(50)
as 
	begin
		insert into Compra(FechaHora, Descripcion, Total, EstadoCompraVentaId, ProveedorId, UserName) 
		values (@FechaHora, @Descripcion, @Total, @EstadoCompraVentaId, @ProveedorId, @UserName)
	end
go
select SCOPE_IDENTITY();
--------------------------------------------------------------------------------------------------------
create procedure sp_CompraDelete
	@CompraId int
as
	begin
		delete from Compra where CompraId = @CompraId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CompraUpdate
	@CompraId int,
	@FechaHora datetime,
	@Descripcion varchar(200),
	@Total money,
	@EstadoCompraVentaId int ,
	@ProveedorId int,
	@UserName varchar(50)
as
	begin
		update Compra set
		FechaHora = @FechaHora,
		Descripcion = @Descripcion,
		Total = @Total,
		EstadoCompraVentaId = @EstadoCompraVentaId,
		ProveedorId = @ProveedorId,
		UserName = @UserName
		where CompraId = @CompraId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CompraSelectAll
as
	begin
		select*from Compra order by EstadoCompraVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_CompraSelectById
	@CompraId int
as
	begin
		select * from Compra where CompraId = @CompraId order by EstadoCompraVentaId asc;
	end
go
--------------------------------------------------------------------------------------------------------
 --DETCOMPRA--
create procedure sp_DetCompraInsert
	@CompraId int,
	@ProductoId int,
	@Cantidad int,
	@PrecioUnit money,
	@Monto money
as 
	begin
		insert into DetCompra(CompraId, ProductoId, Cantidad, PrecioUnit, Monto) 
		values (@CompraId, @ProductoId, @Cantidad, @PrecioUnit, @Monto)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetCompraDelete
	@DetCompraId int
as
	begin
		delete from DetCompra where DetCompraId = @DetCompraId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetCompraUpdate
	@DetCompraId int,
	@CompraId int,
	@ProductoId int,
	@Cantidad int,
	@PrecioUnit money,
	@Monto money
as
	begin
		update DetCompra set
		CompraId = @CompraId,
		ProductoId = @ProductoId,
		Cantidad = @Cantidad,
		PrecioUnit = @PrecioUnit,
		Monto = @Monto
		where DetCompraId = @DetCompraId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetCompraSelectAll
as
	begin
		select*from DetCompra;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetCompraSelectById
	@DetCompraId int
as
	begin
		select * from DetCompra where DetCompraId = @DetCompraId;
	end
go
--------------------------------------------------------------------------------------------------------
--CLIENTE--
create procedure sp_ClienteInsert
	@Nombre varchar(50),
	@Apellido varchar(50),
	@NumDoc varchar(50),
	@TipoDocId int,
	@Correo varchar(150),
	@EstadoId int
as 
	begin
		insert into Cliente(Nombre, Apellido, NumDoc, TipoDocId, Correo, EstadoId) 
			values (@Nombre, @Apellido, @NumDoc, @TipoDocId, @Correo, @EstadoId)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ClienteDelete
	@ClienteId int
as
	begin
		update Cliente
		set EstadoId = 2
		where ClienteId = @ClienteId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ClienteUpdate
	@ClienteId int,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@NumDoc varchar(50),
	@TipoDocId int,
	@Correo varchar(150),
	@EstadoId int
as
	begin
		update Cliente set 
		Nombre=@Nombre,
		Apellido = @Apellido,
		NumDoc = @NumDoc,
		TipoDocId = @TipoDocId,
		Correo = @Correo,
		EstadoId=@EstadoId
		where ClienteId = @ClienteId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ClienteSelectAll
as
	begin
		select*from Cliente order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ClienteSelectById
	@ClienteId int
as
	begin
		select * from Cliente where ClienteId = @ClienteId order by EstadoId asc;
	end
go
--------------------------------------------------------------------------------------------------------
 --VENTA--
create procedure sp_VentaInsert
	@FechaHora datetime,
	@EstadoCompraVentaId int,
	@ClienteId int,
	@Total money,
	@UserName varchar(50),
	@TipoPagoId int
as 
	begin
		insert into Venta(FechaHora, EstadoCompraVentaId, ClienteId, Total, UserName, TipoPagoId) 
		values (@FechaHora, @EstadoCompraVentaId, @ClienteId, @Total, @UserName, @TipoPagoId)
	end
	select SCOPE_IDENTITY();
go
--------------------------------------------------------------------------------------------------------
create procedure sp_VentaDelete
	@VentaId int
as
	begin
		delete from Venta where VentaId = @VentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_VentaUpdate
	@VentaId int,
	@FechaHora datetime,
	@EstadoCompraVentaId int,
	@ClienteId int,
	@Total money,
	@UserName varchar(50),
	@TipoPagoId int
as
	begin
		update Venta set
		FechaHora = @FechaHora,
		EstadoCompraVentaId = @EstadoCompraVentaId,
		ClienteId = @ClienteId,
		Total = @Total,
		UserName = @UserName,
		TipoPagoId = @TipoPagoId
		where VentaId = @VentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_VentaSelectAll
as
	begin
		select*from Venta order by EstadoCompraVentaId asc;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_VentaSelectById
	@VentaId int
as
	begin
		select * from Venta where VentaId = @VentaId order by EstadoCompraVentaId asc;
	end
go
--------------------------------------------------------------------------------------------------------
 --DETVENTA--
create procedure sp_DetVentaInsert
	@VentaId int,
	@ProductoId int, 
	@Cantidad int,
	@PrecioUnit money,
	@Monto money
as 
	begin
		insert into DetVenta(VentaId, ProductoId, Cantidad, PrecioUnit, Monto) 
		values (@VentaId, @ProductoId, @Cantidad, @PrecioUnit, @Monto)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetVentaDelete
	@DetVentaId int
as
	begin
		delete from DetVenta where DetVentaId = @DetVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetVentaUpdate
	@DetVentaId int,
	@VentaId int,
	@ProductoId int, 
	@Cantidad int,
	@PrecioUnit money,
	@Monto money
as
	begin
		update DetVenta set
		VentaId = @VentaId,
		ProductoId = @ProductoId,
		Cantidad = @Cantidad,
		PrecioUnit = @PrecioUnit,
		Monto = @Monto
		where DetVentaId = @DetVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetVentaSelectAll
as
	begin
		select*from DetVenta;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_DetVentaSelectById
	@DetVentaId int
as
	begin
		select * from DetVenta where DetVentaId = @DetVentaId;
	end
go
--------------------------------------------------------------------------------------------------------
 --ARQUEO--
create procedure sp_ArqueoInsert
	@Fecha datetime,
	@UserName varchar(50),
	@UsuarioAutorizado varchar(50),
	@FondoInicial money,
	@FondoCierre money,
	@Billete_100 int,
	@Billete_50 int,
	@Billete_20 int,
	@Billete_10 int,
	@Billete_5 int,
	@Billete_1 int,
	@Moneda_1 int,
	@Moneda_25cent int,
	@Moneda_10cent int,
	@Moneda_5cent int,
	@Moneda_1cent int,
	@TotalFondo money
as 
	begin
		insert into Arqueo(Fecha, UserName, UsuarioAutorizado, FondoInicial, FondoCierre,
		Billete_$100,Billete_$50, Billete_$20, Billete_$10, Billete_$5, Billete_$1,
		Moneda_$1, Moneda_$25cent, Moneda_$10cent, Moneda_$5cent, Moneda_$1cent, TotalFondo) 
		values (@Fecha, @UserName, @UsuarioAutorizado, @FondoInicial, @FondoCierre,
		@Billete_100, @Billete_50, @Billete_20, @Billete_10, @Billete_5, @Billete_1,
		@Moneda_1, @Moneda_25cent, @Moneda_10cent, @Moneda_5cent, @Moneda_1cent, @TotalFondo)
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ArqueoDelete
	@ArqueoId int
as
	begin
		delete from Arqueo where ArqueoId = @ArqueoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ArqueoUpdate
	@ArqueoId int,
	@Fecha datetime,
	@UserName varchar(50),
	@UsuarioAutorizado varchar(50),
	@FondoInicial money,
	@FondoCierre money,
	@Billete_100 int,
	@Billete_50 int,
	@Billete_20 int,
	@Billete_10 int,
	@Billete_5 int,
	@Billete_1 int,
	@Moneda_1 int,
	@Moneda_25cent int,
	@Moneda_10cent int,
	@Moneda_5cent int,
	@Moneda_1cent int,
	@TotalFondo money
as
	begin
		update Arqueo set
			Fecha=@Fecha,
			UserName=@UserName,
			UsuarioAutorizado=@UsuarioAutorizado,
			FondoInicial=@FondoInicial,
			FondoCierre=@FondoCierre,
			Billete_$100=@Billete_100,
			Billete_$50=@Billete_50,
			Billete_$20=@Billete_20,
			Billete_$10=@Billete_10,
			Billete_$5=@Billete_5,
			Billete_$1=@Billete_1,
			Moneda_$1=@Moneda_1 ,
			Moneda_$25cent=@Moneda_25cent,
			Moneda_$10cent=@Moneda_10cent,
			Moneda_$5cent=@Moneda_5cent,
			Moneda_$1cent=@Moneda_1cent,
			TotalFondo=@TotalFondo
		where ArqueoId = @ArqueoId;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ArqueoSelectAll
as
	begin
		select*from Arqueo;
	end
go
--------------------------------------------------------------------------------------------------------
create procedure sp_ArqueoSelectById
	@ArqueoId int
as
	begin
		select * from Arqueo where ArqueoId = @ArqueoId;
	end
go

create procedure sp_ArqueoSelectByDate
	@Date datetime
as
	begin
		SELECT COUNT(*) FROM Arqueo WHERE CONVERT(date, Fecha) = CONVERT(date,@Date);
	end
go

--------------------------------------------------------------------------------------------------------
-- Logs
create proc sp_LosgInsert
	@Fecha datetime,
	@Tabla varchar(10),
	@RegistroId int,
	@Accion varchar(5),
	@Descripcion varchar(250),
	@UserName varchar(50)
as
	begin
		insert into Logs(Fecha,Tabla,RegistroId,Accion,Descripcion,UserName) 
		values(@Fecha, @Tabla, @RegistroId, @Accion, @Descripcion, @UserName)
	end
go
---------------------------------------------------------------------------------
create proc sp_LogsSelectAll
as
begin
	select * from Logs
end
go

----------------------------------------------------------------------------------
create proc sp_LogsSelectById
	@LogsId int
as
	begin
		select * from Logs where LogsId = @LogsId;
	end
go
------------------------------------------------------------------------------------
--INICIAR SESIÓN 
--------------------------------------------------------------------------------------
Create proc sp_IniciarSesion
	@UserName varchar(50),
	@Contraseña varchar(100)
as
	begin
		Select * from Usuario where UserName = @UserName and Contraseña = @Contraseña
	end
go


------------------------------------------------------------------------------------
--Seleccionar ventas diarias
--------------------------------------------------------------------------------------
create proc sp_VentasSelectByDate
	@Date datetime
as
	begin
		select SUM(Total) as Total from Venta where CONVERT(date, FechaHora) = @Date
	end
go


SELECT * FROM EstadoCompraVenta WHERE EstadoCompraVentaId = 1;



CREATE PROCEDURE sp_ComprasInsert
    @ProveedorId INT,
    @FechaHora DATETIME,
    @UserName NVARCHAR(50),
    @Descripcion NVARCHAR(255),
    @EstadoCompraVentaId INT,
    @Total DECIMAL(18, 2),
    @CompraId INT OUTPUT -- Parámetro de salida para devolver el ID generado
AS
BEGIN
    INSERT INTO Compra (ProveedorId, FechaHora, UserName, Descripcion, EstadoCompraVentaId, Total)
    VALUES (@ProveedorId, @FechaHora, @UserName, @Descripcion, @EstadoCompraVentaId, @Total);

    -- Devolver el ID generado
    SET @CompraId = SCOPE_IDENTITY();
END;




CREATE PROCEDURE sp_ComprasInserted --Prod actualizado para que funcione hacer compras
    @FechaHora DATETIME,
    @Descripcion VARCHAR(200),
    @Total MONEY,
    @ProveedorId INT,
    @EstadoCompraVentaId INT,
    @UserName VARCHAR(50)
AS
BEGIN
    INSERT INTO Compra (FechaHora, Descripcion, Total, ProveedorId, EstadoCompraVentaId, UserName)
    VALUES (@FechaHora, @Descripcion, @Total, @ProveedorId, @EstadoCompraVentaId, @UserName);
    
    -- Devuelve el ID de la compra recién creada
    SELECT SCOPE_IDENTITY();
END


select*from DetCompra








CREATE PROCEDURE sp_InventarioCompras
    @ProductoId INT,
    @Cantidad INT
AS
BEGIN
    -- Verifica si el producto ya existe en el inventario
    IF EXISTS (SELECT 1 FROM Inventario WHERE ProductoId = @ProductoId)
    BEGIN
        UPDATE Inventario
        SET Cantidad = Cantidad + @Cantidad
        WHERE ProductoId = @ProductoId;
    END
    ELSE
    BEGIN
        -- Si no existe, puedes decidir insertar el producto con la cantidad.
        INSERT INTO Inventario (ProductoId, Cantidad)
        VALUES (@ProductoId, @Cantidad);
    END
END
GO


select*from TipoPago 

INSERT INTO TipoPago (Nombre, EstadoId) VALUES ('Efectivo', 1);
INSERT INTO TipoPago (Nombre, EstadoId) VALUES ('Tarjeta de Crédito', 1);


select*from Venta







--Prod para facturas

--Para insertar factura
CREATE PROCEDURE sp_FacturaInsert
    @FechaEmision DATETIME,
    @Total DECIMAL(18, 2),
    @ClienteId INT,
    @UserName NVARCHAR(50),
    @EstadoCompraVentaId INT,
    @Observacion NVARCHAR(255) = NULL
AS
BEGIN
    INSERT INTO Factura (FechaEmision, Total, ClienteId, UserName, EstadoCompraVentaId, Observacion)
    VALUES (@FechaEmision, @Total, @ClienteId, @UserName, @EstadoCompraVentaId, @Observacion);

    SELECT SCOPE_IDENTITY() AS FacturaId;
END;
--Para seleccionar todo
go
CREATE PROCEDURE sp_FacturaSelectAll
AS
BEGIN
    SELECT FacturaId, FechaEmision, Total, ClienteId, UserName, EstadoCompraVentaId, Observacion
    FROM Factura;
END;
go

--Para seleccionar el Id
CREATE PROCEDURE sp_FacturaSelectById
    @FacturaId INT
AS
BEGIN
    SELECT FacturaId, FechaEmision, Total, ClienteId, UserName, EstadoCompraVentaId, Observacion
    FROM Factura
    WHERE FacturaId = @FacturaId;
END;
go


--Para actualizar Factura
CREATE PROCEDURE sp_FacturaUpdate
    @FacturaId INT,
    @FechaEmision DATETIME,
    @Total DECIMAL(18, 2),
    @ClienteId INT,
    @UserName NVARCHAR(50),
    @EstadoCompraVentaId INT,
    @Observacion NVARCHAR(255) = NULL
AS
BEGIN
    UPDATE Factura
    SET FechaEmision = @FechaEmision,
        Total = @Total,
        ClienteId = @ClienteId,
        UserName = @UserName,
        EstadoCompraVentaId = @EstadoCompraVentaId,
        Observacion = @Observacion
    WHERE FacturaId = @FacturaId;
END;
go

--para eliminar factura
CREATE PROCEDURE sp_FacturaDelete
    @FacturaId INT
AS
BEGIN
    DELETE FROM Factura
    WHERE FacturaId = @FacturaId;
END;
go

--Detalle factura para insertar
CREATE PROCEDURE sp_DetalleFacturaInsert
    @FacturaId INT,
    @ProductoId INT,
    @Cantidad INT,
    @PrecioUnit DECIMAL(18, 2),
    @Monto DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO DetalleFactura (FacturaId, ProductoId, Cantidad, PrecioUnit, Monto)
    VALUES (@FacturaId, @ProductoId, @Cantidad, @PrecioUnit, @Monto);

    SELECT SCOPE_IDENTITY() AS DetalleFacturaId;
END;
go

--Para seleccionar todo  de factura
CREATE PROCEDURE sp_DetalleFacturaSelectAll
AS
BEGIN
    SELECT DetalleFacturaId, FacturaId, ProductoId, Cantidad, PrecioUnit, Monto
    FROM DetalleFactura;
END;
go
--Para seleccionar el detalle
CREATE PROCEDURE sp_DetalleFacturaSelectById
    @DetalleFacturaId INT
AS
BEGIN
    SELECT DetalleFacturaId, FacturaId, ProductoId, Cantidad, PrecioUnit, Monto
    FROM DetalleFactura
    WHERE DetalleFacturaId = @DetalleFacturaId;
END;
go
--Para eliminar
CREATE PROCEDURE sp_DetalleFacturaDelete
    @DetalleFacturaId INT
AS
BEGIN
    DELETE FROM DetalleFactura
    WHERE DetalleFacturaId = @DetalleFacturaId;
END;
go

select*from Venta