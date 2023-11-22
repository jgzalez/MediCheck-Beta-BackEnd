USE Medicheck;
GO

-- Insertar datos en la tabla Usuario
INSERT INTO Usuario (rol, nombre, apellidos, correo, telefono, habilitado, fecha_nacimiento)
VALUES 
('AFILIADO', 'Juan', 'Pérez', 'juan.perez@example.com', '1234567890', 1, '1980-01-01'),
('ADMINISTRADOR', 'Ana', 'García', 'ana.garcia@example.com', '2345678901', 1, '1985-02-02');

-- Insertar datos en la tabla Aseguradora
INSERT INTO Aseguradora (nombre, direccion, telefono, correo, sitio_web)
VALUES 
('Aseguradora A', 'Calle 123', '9876543210', 'contacto@aseguradoraa.com', 'www.aseguradoraa.com'),
('Aseguradora B', 'Avenida 456', '8765432109', 'contacto@aseguradorab.com', 'www.aseguradorab.com');

-- Insertar datos en la tabla PlanUsuario
INSERT INTO PlanUsuario (descripcion, id_aseguradora)
VALUES 
('Plan Basico', 1),
('Plan Premium', 2);

-- Insertar datos en la tabla Producto
INSERT INTO Producto (nombre, descripcion, habilitado, tipo, categoria)
VALUES 
('Producto 1', 'Descripción del Producto 1', 1, 'MEDICAMENTO', 'CARDIOLOGIA'),
('Producto 2', 'Descripción del Producto 2', 1, 'CONSULTA', 'DERMATOLOGIA');

-- Insertar datos en la tabla Establecimiento
INSERT INTO Establecimiento (nombre, categoria, direccion, telefono, correo)
VALUES 
('Farmacia Central', 'FARMACIA', 'Calle Principal 123', '1231231234', 'info@farmaciacentral.com'),
('Laboratorio Clínico', 'LABORATORIO', 'Avenida Secundaria 456', '4564564567', 'contacto@laboratorio.com');

-- Continuar con las inserciones para las demás tablas...
