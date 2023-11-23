-- Crear la base de datos
CREATE DATABASE MediCheck;
GO

-- Cambiar a la base de datos creada
USE MediCheck;
GO

-- Crear la tabla Usuario
CREATE TABLE Usuario (
  id_usuario INT PRIMARY KEY IDENTITY,
  rol VARCHAR(255) NOT NULL CHECK (rol IN ('AFILIADO', 'ADMINISTRADOR', 'BACKOFFICE')),
  nombre VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255),
  correo VARCHAR(255),
  telefono VARCHAR(255),
  habilitado BIT NOT NULL,
  fecha_nacimiento DATE,
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- Crear la tabla Aseguradora
CREATE TABLE Aseguradora (
  id_aseguradora INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(255) NOT NULL,
  direccion VARCHAR(255),
  telefono VARCHAR(255),
  correo VARCHAR(255),
  sitio_web VARCHAR(255),
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- Crear la tabla PlanUsuario
CREATE TABLE PlanUsuario (
  id_plan INT PRIMARY KEY IDENTITY,
  descripcion VARCHAR(255) NOT NULL,
  id_aseguradora INT NOT NULL,
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE(),
  FOREIGN KEY (id_aseguradora) REFERENCES Aseguradora(id_aseguradora)
);
GO

-- Crear la tabla Producto
CREATE TABLE Producto (
  id_producto INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255),
  habilitado BIT,
  tipo VARCHAR(255) CHECK (tipo IN ('MEDICAMENTO', 'PROCEDIMIENTO', 'ANALITICA', 'CONSULTA')),
  categoria VARCHAR(255) CHECK (categoria IN ('CARDIOLOGIA', 'ODONTOLOGIA', 'DERMATOLOGIA', 'EMERGENCIA', 'ORTOPEDIA', 'CIRUGIA', 'GASTROENTEROLOGIA', 'HEMATOLOGIA', 'INFECTOLOGIA')),
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- Crear la tabla Establecimiento
CREATE TABLE Establecimiento (
  id_establecimiento INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(255) NOT NULL,
  categoria VARCHAR(255) NOT NULL CHECK (categoria IN ('FARMACIA', 'LABORATORIO', 'CENTRO_MEDICO')),
  direccion VARCHAR(255),
  telefono VARCHAR(255),
  correo VARCHAR(255),
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- Crear la tabla usuario_plan
CREATE TABLE usuario_plan (
  id INT PRIMARY KEY IDENTITY,
  id_usuario INT,
  id_plan INT,
  fecha_vencimiento DATE,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_plan) REFERENCES PlanUsuario(id_plan)
);
GO

-- Crear la tabla establecimiento_aseguradora
CREATE TABLE establecimiento_aseguradora (
  id_aseguradora INT,
  id_establecimiento INT,
  vigente BIT,
  PRIMARY KEY (id_aseguradora, id_establecimiento),
  FOREIGN KEY (id_aseguradora) REFERENCES Aseguradora(id_aseguradora),
  FOREIGN KEY (id_establecimiento) REFERENCES Establecimiento(id_establecimiento)
);
GO

-- Crear la tabla Cobertura
CREATE TABLE Cobertura (
  id_cobertura INT PRIMARY KEY IDENTITY,
  id_producto INT NOT NULL,
  id_plan INT NOT NULL,
  cubre BIT,
  porcentaje DECIMAL(5,2),
  fecha_vencimiento DATE,
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE(),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
  FOREIGN KEY (id_plan) REFERENCES PlanUsuario(id_plan)
);
GO

-- Crear la tabla productos_guardados
CREATE TABLE productos_guardados (
  id_usuario INT,
  id_producto INT,
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE(),
  PRIMARY KEY (id_usuario, id_producto),
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
GO

-- Crear la tabla reporte_incidente
CREATE TABLE reporte_incidente (
  id_incidente INT PRIMARY KEY IDENTITY,
  id_usuario_plan INT NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  id_establecimiento INT,
  id_producto INT,
  estado VARCHAR(255) CHECK (estado IN ('CREADO', 'EN_REVISION', 'CERRADO')),
  fecha_incidente DATE,
  fecha_registro DATETIME NOT NULL DEFAULT GETDATE(),
  FOREIGN KEY (id_usuario_plan) REFERENCES usuario_plan(id),
  FOREIGN KEY (id_establecimiento) REFERENCES Establecimiento(id_establecimiento),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
GO
