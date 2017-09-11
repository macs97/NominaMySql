CREATE VIEW VistaEmpleado AS

SELECT Empleado.id AS Id_Empleado,
	Empleado.Nombre, 
	Empleado.Apellido, 
	Cargo.Nombre AS 'Cargo'
FROM Empleado
	LEFT JOIN Cargo ON Empleado.CargoId = Cargo.id;