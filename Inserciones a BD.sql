--PROCEDIMIENTO PARA ACTUALIZAR CÓDIGO LUEGO DE INGRESAR
use PapelStudio


create proc sp_ActualizarCodigo
	@ProductoId int,
	@Codigo varchar(30)
as
begin
	Update Producto set Codigo = @Codigo where ProductoId = @ProductoId;
end

exec sp_EstadoInsert 'ACTIVO'
exec sp_EstadoInsert 'INACTIVO'


UPDATE Estado
SET Nombre = CASE
    WHEN EstadoId = 1 THEN 'ACTIVO'
    WHEN EstadoId = 2 THEN 'INACTIVO'
END
WHERE EstadoId IN (1, 2);




select*from Estado drop where

select*from Cargo


INSERT INTO Turno(Horario)
VALUES ('08:00 - 18:00');

INSERT INTO Turno(Horario)
VALUES ('06:00 - 18:00'); --para administrador


INSERT INTO Cargo (Nombre, EstadoId)
VALUES ('Cajero', 1),
       ('Almacenista', 1),
       ('Encargado de Compras', 1),
       ('Gerente de Librería', 1),
       ('Bibliotecario', 1),
       ('Asistente de Ventas', 1),
       ('Supervisor de Piso', 1),
       ('Encargado de Inventario', 1),
       ('Promotor de Lectura', 1),
       ('Recepcionista', 1);

   select*from Cargo
	

	select*from Rol




exec sp_EstadoCompraVentaInsert 'PAGADO'
exec sp_EstadoCompraVentaInsert 'CANCELADO'
exec sp_EstadoCompraVentaInsert 'PENDIENTE'

exec sp_EncabezadoFacturaInsert ''

exec sp_TipoDocInsert 'DUI'
exec sp_TipoDocInsert 'PASAPORTE'

exec sp_TipoPagoInsert 'EFECTIVO', 1
exec sp_TipoPagoInsert 'TARJETA', 1


select * from Usuario

insert Inventario(ProductoId, Cantidad) VALUES (1, 20)
insert Inventario(ProductoId, Cantidad) VALUES (2, 10)

insert into Usuario(UserName, Contraseña, FechaRegistro, EmpleadoId, RolId, EstadoId) 
	values ('Caja1', 'Caja',2023-10-26,1,1,1)

select * from Empleado
select * from Usuario

select * from Producto



INSERT INTO Categoria (Nombre, EstadoId) VALUES ('Papelería', 1);
INSERT INTO Categoria (Nombre, EstadoId) VALUES ('Escritorio', 1);
INSERT INTO Categoria (Nombre, EstadoId) VALUES ('Artículos de Arte', 1);
INSERT INTO Categoria (Nombre, EstadoId) VALUES ('Material Escolar', 1);
INSERT INTO Categoria (Nombre, EstadoId) VALUES ('Organización', 1);
INSERT INTO Categoria (Nombre, EstadoId) VALUES ('Suministros de Oficina', 1);



INSERT INTO Marca (Nombre, EstadoId) VALUES ('BIC', 1);
INSERT INTO Marca (Nombre, EstadoId) VALUES ('Faber-Castell', 1);
INSERT INTO Marca (Nombre, EstadoId) VALUES ('Staedtler', 1);
INSERT INTO Marca (Nombre, EstadoId) VALUES ('Pilot', 1);
INSERT INTO Marca (Nombre, EstadoId) VALUES ('Crayola', 1);
INSERT INTO Marca (Nombre, EstadoId) VALUES ('OfficeMax', 1);
INSERT INTO Marca (Nombre, EstadoId) VALUES ('3M', 1);



INSERT INTO Proveedor (Nombre, Telefono, Contacto, Direccion, PagWeb, EstadoId) VALUES ('Distribuidora de Papelería La Luz', '55-1234-5678', 'Laura Mendoza', 'Av. Reforma 456, Ciudad de México, CDMX', 'www.laluzpapeleria.com', 1);
INSERT INTO Proveedor (Nombre, Telefono, Contacto, Direccion, PagWeb, EstadoId) VALUES ('Papelería y Suministros El Águila', '55-2345-6789', 'Ricardo Torres', 'Calle de los Pinos 123, Guadalajara, Jalisco', 'www.elaguilapapeleria.com', 1);
INSERT INTO Proveedor (Nombre, Telefono, Contacto, Direccion, PagWeb, EstadoId) VALUES ('Suministros Escolares San Juan', '55-3456-7890', 'Patricia González', 'Calle 5 de Febrero 321, Monterrey, Nuevo León', 'www.suministrossanjuan.com', 1);
INSERT INTO Proveedor (Nombre, Telefono, Contacto, Direccion, PagWeb, EstadoId) VALUES ('Papelería Total', '55-4567-8901', 'Alberto Jiménez', 'Blvd. Universitario 789, Puebla, Puebla', 'www.papeleriatotal.com', 1);
INSERT INTO Proveedor (Nombre, Telefono, Contacto, Direccion, PagWeb, EstadoId) VALUES ('Materiales y Papelería S.A.', '55-5678-9012', 'Sofía Ruiz', 'Calle Madero 456, Mérida, Yucatán', 'www.materialespapeleria.com', 1);


select*from Producto


select*from Producto