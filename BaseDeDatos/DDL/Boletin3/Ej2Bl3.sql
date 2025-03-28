CREATE TABLE BARCOS (
    MATRICULA VARCHAR(50),
    NOMBRE VARCHAR(100),
    CLASE VARCHAR(50),
    CAPACIDAD INT(15),
    NACIONALIDAD VARCHAR(50)
);

CREATE TABLE CALADERO (
    CODIGO VARCHAR(15),
    NOMBRE VARCHAR(100),
    UBICACION VARCHAR(100),
    ESPECIE_PRINCIPAL VARCHAR(15),
    NOMBRE_CIENTIFICO VARCHAR(15)
);

CREATE TABLE ESPECIE (
    CODIGO VARCHAR(15),
    NOMBRE VARCHAR(100),
    TIPO VARCHAR(50),
    CUPOPORBARCO INT(10),
    CALADERO_PRINCIPAL VARCHAR(15)
);

CREATE TABLE LOTES (
    CODIGO VARCHAR(15),
    MATRICULA VARCHAR(50),
    NUMKILOS INT(10),
    PRECIOPORKILOSALIDA DECIMAL(10, 2),
    PRECIOPORKILOADJUDICADO DECIMAL(10, 2),
    FECHAVENTA DATE NOT NULL,
    COD_ESPECIE VARCHAR(15)
);

CREATE TABLE FECHAS_CAPTURAS_PERMITIDAS (
    COD_ESPECIE VARCHAR(15),
    COD_CALADERO VARCHAR(15),
    FECHA_INICIAL DATE,
    FECHA_FINAL DATE
);


ALTER TABLE BARCOS ADD CONSTRAINT PK_BARCOS PRIMARY KEY (MATRICULA);
ALTER TABLE CALADERO ADD CONSTRAINT PK_CALADERO PRIMARY KEY (CODIGO);
ALTER TABLE ESPECIE ADD CONSTRAINT PK_ESPECIE PRIMARY KEY (CODIGO);
ALTER TABLE LOTES ADD CONSTRAINT PK_LOTES PRIMARY KEY (CODIGO);
ALTER TABLE FECHAS_CAPTURAS_PERMITIDAS ADD CONSTRAINT PK_FECHAS_CAPTURAS PRIMARY KEY (COD_ESPECIE, COD_CALADERO);


ALTER TABLE CALADERO ADD CONSTRAINT FK_CALADERO_ESPECIE FOREIGN KEY (ESPECIE_PRINCIPAL) REFERENCES ESPECIE(CODIGO) ON DELETE SET NULL;
ALTER TABLE ESPECIE ADD CONSTRAINT FK_ESPECIE_CALADERO FOREIGN KEY (CALADERO_PRINCIPAL) REFERENCES CALADERO(CODIGO) ON DELETE SET NULL;
ALTER TABLE LOTES ADD CONSTRAINT FK_LOTES_BARCOS FOREIGN KEY (MATRICULA) REFERENCES BARCOS(MATRICULA) ON DELETE CASCADE;
ALTER TABLE LOTES ADD CONSTRAINT FK_LOTES_ESPECIE FOREIGN KEY (COD_ESPECIE) REFERENCES ESPECIE(CODIGO) ON DELETE CASCADE;
ALTER TABLE FECHAS_CAPTURAS_PERMITIDAS ADD CONSTRAINT FK_FECHAS_ESPECIE FOREIGN KEY (COD_ESPECIE) REFERENCES ESPECIE(CODIGO);
ALTER TABLE FECHAS_CAPTURAS_PERMITIDAS ADD CONSTRAINT FK_FECHAS_CALADERO FOREIGN KEY (COD_CALADERO) REFERENCES CALADERO(CODIGO);


ALTER TABLE LOTES ADD CONSTRAINT CHK_PRECIOKILO CHECK (PRECIOPORKILOADJUDICADO > PRECIOPORKILOSALIDA);
ALTER TABLE LOTES ADD CONSTRAINT CHK_NUMKILOS CHECK (NUMKILOS > 0);
ALTER TABLE LOTES ADD CONSTRAINT CHK_PRECIOPORKILOSALIDA CHECK (PRECIOPORKILOSALIDA > 0);
ALTER TABLE LOTES ADD CONSTRAINT CHK_PRECIOPORKILOADJUDICADO CHECK (PRECIOPORKILOADJUDICADO > 0);


ALTER TABLE FECHAS_CAPTURAS_PERMITIDAS ADD CONSTRAINT CHK_FECHAS_CAPTURA_RESTRINGIDAS
CHECK ((FECHA_INICIAL < '2024-02-02' OR FECHA_FINAL < '2024-02-02')
OR (FECHA_INICIAL > '2024-03-28' OR FECHA_FINAL > '2024-03-28'));


-- BARCOS
INSERT INTO BARCOS (MATRICULA, NOMBRE, CLASE, CAPACIDAD, NACIONALIDAD)
VALUES ('B001', 'Barco Pesquero A', 'Pesquero', 500, 'España'),('B002', 'Barco Pesquero B', 'Pesquero', 700, 'Francia');

-- CALADERO
INSERT INTO CALADERO (CODIGO, NOMBRE, UBICACION, ESPECIE_PRINCIPAL, NOMBRE_CIENTIFICO)
VALUES ('C001', 'Caladero Norte', 'Zona Norte', 'E001', 'Gadus morhua'),('C002', 'Caladero Sur', 'Zona Sur', 'E002', 'Thunnus thynnus');

-- ESPECIE
INSERT INTO ESPECIE (CODIGO, NOMBRE, TIPO, CUPOPORBARCO, CALADERO_PRINCIPAL)
VALUES ('E001', 'Merluza', 'Pescado', 500, 'C001'),('E002', 'Atún', 'Pescado', 700, 'C002');

-- LOTES
INSERT INTO LOTES (CODIGO, MATRICULA, NUMKILOS, PRECIOPORKILOSALIDA, PRECIOPORKILOADJUDICADO, FECHAVENTA, COD_ESPECIE)
VALUES ('L001', 'B001', 1000, 5, 6, '2024-06-01', 'E001'),('L002', 'B002', 1500, 8, 9, '2024-07-01', 'E002');

-- FECHAS_CAPTURAS_PERMITIDAS
INSERT INTO FECHAS_CAPTURAS_PERMITIDAS (COD_ESPECIE, COD_CALADERO, FECHA_INICIAL, FECHA_FINAL)
VALUES ('E001', 'C001', '2024-01-01', '2024-12-31'),('E002', 'C002', '2024-02-01', '2024-11-30');

-- Eliminar
ALTER TABLE BARCOS DROP COLUMN ARMADOR;

-- Eliminar tablas (si es necesario)
-- DROP TABLE FECHAS_CAPTURAS_PERMITIDAS;
-- DROP TABLE LOTES;
-- DROP TABLE ESPECIE;
-- DROP TABLE CALADERO;
-- DROP TABLE BARCOS;
