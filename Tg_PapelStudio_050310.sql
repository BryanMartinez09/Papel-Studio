use PapelStudio
go
--ESTADO
CREATE TRIGGER tg_EstadoInsert
ON Estado
after INSERT
AS
BEGIN
     INSERT INTO Logs ( Accion, Tabla, idRegistro, Descripcion, UserName)
	SELECT 'I',
	'Estado',
	EstadoId,  
	'Se desarroll� una inserci�n', 
	USER_NAME()
    from inserted;
END
go
 
create trigger Tg_EstadoDelete
	on Estado
	after delete  
	as
		begin
			INSERT INTO Logs ( Accion, Tabla, idRegistro, Descripcion, UserName)
			SELECT 'D',
			'Estado',
			EstadoId,  
			'Se desarroll� una eliminaci�n o desactivaci�n', 
			USER_NAME()
			from deleted
		end
	go
 create trigger Tg_EstadoUpdate
	on Estado
	after update 
	as
		begin
			INSERT INTO Logs ( Accion, Tabla, idRegistro, Descripcion, UserName)
			SELECT 'U',
			'Estado',
			EstadoId,  
			'Se desarroll� una actualizaci�n',
			1
			from inserted
		end
	go


exec sp_EstadoInsert 'Activo'


select*from Producto


TRUNCATE TABLE Producto;
DELETE FROM Producto;

ALTER TABLE Producto NOCHECK CONSTRAINT ALL;

DBCC CHECKIDENT ('Producto', RESEED, 0);

select*from Producto

select*from EstadoCompraVenta

INSERT INTO EstadoCompraVenta (Nombre)
VALUES ( 'Realizada'); -- O cualquier otro valor que necesites





SELECT * 
FROM sys.objects 
WHERE name = 'sp_UsuarioUpdate' AND type = 'P';



create PROCEDURE sp_UsuariosUpdate
    @UserName VARCHAR(50),
    @Contrase�a VARCHAR(100),
    @FechaRegistro DATETIME,
    @EmpleadoId INT,
    @RolId INT,
    @EstadoId INT
AS
BEGIN
    UPDATE Usuario 
    SET 
        Contrase�a = @Contrase�a,
        FechaRegistro = @FechaRegistro,
        EmpleadoId = @EmpleadoId,
        RolId = @RolId,
        EstadoId = @EstadoId 
    WHERE UserName = @UserName;
END
GO


select*from EncabezadoFactura