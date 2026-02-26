-- VERSION 0.1
CREATE DATABASE IF NOT EXISTS tuleto;
USE tuleto;

CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    sexo VARCHAR(20),
    puesto VARCHAR(50),
    piezas_por_dia INT,
    tiempo_promedio_por_pieza DECIMAL(10,2),
    accidentes_laborales INT,
    dias_incapacidad INT,
    nivel_desempeno VARCHAR(30),
    bono_productividad DECIMAL(10,2),
    meta_diaria INT
);

CREATE TABLE piezas (
    id_pieza INT PRIMARY KEY AUTO_INCREMENT,
    tipo_de_pieza VARCHAR(50)
);

CREATE TABLE maquinas (
    id_maquina INT PRIMARY KEY AUTO_INCREMENT,
    tipo_de_maquina VARCHAR(50),
    estado_maquina VARCHAR(30),
    nivel_ruido VARCHAR(30),
    fallas_recurrentes VARCHAR(100)
);

-- Tabla Bitácora de eventos (Auditoría y trazabilidad)
CREATE TABLE bitacora_eventos (
  id_evento INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  rol VARCHAR(30) NOT NULL,
  accion_realizada VARCHAR(80) NOT NULL,
  id_ticket_afectado INT NULL,
  fecha_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ip_dispositivo VARCHAR(45) NULL
);
