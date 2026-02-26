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