--Tabla de usuarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(150) NOT NULL,
    correo VARCHAR(200),
    telefono VARCHAR(100),
);

-- Tabla de técnicos
CREATE TABLE tecnicos (
    id_tecnico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(150),
    correo VARCHAR(200),
    telefono VARCHAR(100),
    area VARCHAR(100),
);

--Tabla de reportes
CREATE TABLE reportes (
    id_reporte INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_tecnico INT,
    descripcion TEXT,
    fecha_reporte DATETIME,
    prioridad INT,
    estatus INT,
    area INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id_tecnico),
    FOREIGN KEY (id_prioridad) REFERENCES prioridades(id_prioridad),
    FOREIGN KEY (id_estatus) REFERENCES estatus(id_estatus),
    FOREIGN KEY (id_area) REFERENCES areas(id_area),
);

-- Tabla de prioridades
CREATE TABLE prioridades (
    id_prioridad INT AUTO_INCREMENT PRIMARY KEY,
    nivel VARCHAR(50) NOT NULL,
    descripcion TEXT,
);

-- Tabla de estatus
CREATE TABLE estatus (
    id_estatus INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(50) NOT NULL,
    descripcion TEXT,
);

--Tabla area
CREATE TABLE areas (
    id_area INT AUTO_INCREMENT PRIMARY KEY,
    nombre_area VARCHAR(100) NOT NULL,
    id_tecnico INT,
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id_tecnico),
);