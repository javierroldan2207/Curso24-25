CREATE TABLE VEHICULOS (
    MATRICULA VARCHAR2(7),
    MARCA VARCHAR2(10) NOT NULL,
    MODELO VARCHAR2(10) NOT NULL,
    FECHA_COMPRA DATE CHECK (FECHA_COMPRA >= TO_DATE('2001-01-01', 'YYYY-MM-DD')),
    PRECIO_POR_DIA NUMBER(10, 2) CHECK (PRECIO_POR_DIA > 0),
    KILOMETROS_RECORRIDOS NUMBER DEFAULT 0,
    CONSTRAINT CK_MATRICULA CHECK (REGEXP_LIKE(MATRICULA, '^[0-9]{4}[A-Z]{3}$'))
);

CREATE TABLE CLIENTES (
    DNI VARCHAR2(10),
    NOMBRE VARCHAR2(30) NOT NULL,
    NACIONALIDAD VARCHAR2(30),
    FECHA_NACIMIENTO DATE,
    DIRECCION VARCHAR2(50),
    CONSTRAINT CK_DNI CHECK (REGEXP_LIKE(DNI, '^[0-9]{8}-[A-Z]$'))
);

CREATE TABLE ALQUILERES (
    MATRICULA VARCHAR2(7) NOT NULL,
    DNI VARCHAR2(10) NOT NULL,
    FECHAHORA DATE,
    NUM_DIAS NUMBER(2) NOT NULL CHECK (NUM_DIAS > 0),
    KILOMETROS NUMBER(4) DEFAULT 0
);

ALTER TABLE VEHICULOS ADD CONSTRAINT PK_VEHICULOS PRIMARY KEY (MATRICULA);

ALTER TABLE CLIENTES ADD CONSTRAINT PK_CLIENTES PRIMARY KEY (DNI);

ALTER TABLE ALQUILERES ADD CONSTRAINT PK_ALQUILERES PRIMARY KEY (MATRICULA, DNI, FECHAHORA);

ALTER TABLE ALQUILERES ADD CONSTRAINT FK_ALQUILERES_VEHICULOS FOREIGN KEY (MATRICULA) REFERENCES VEHICULOS (MATRICULA) ON DELETE CASCADE;

ALTER TABLE ALQUILERES ADD CONSTRAINT FK_ALQUILERES_CLIENTES FOREIGN KEY (DNI) REFERENCES CLIENTES (DNI) ON DELETE CASCADE;