CREATE TABLE MUNICIPIO
(
ID VARCHAR2(10),
NOMBRE VARCHAR2(20) NOT NULL,
COD_POSTAL NUMBER(10),
PROVINCIA VARCHAR2(15),
CONSTRAINT PK_MUNICIPIO PRIMARY KEY (ID)
);

CREATE TABLE VIVIENDA
(
ID VARCHAR2(10),
TIPO_VIA VARCHAR2(10) DEFAULT 'CALLE',
MOMBRE_VIA VARCHAR2(10) NOT NULL,
NUMERO NUMBER(10) NOT NULL,
ID_MUNICIPIO VARCHAR2(10),
CONSTRAINT PK_VIVIENDA PRIMARY KEY (ID),
CONSTRAINT FK1_VIVIENDA FOREIGN KEY (ID_MUNICIPIO) REFERENCES MUNICIPIO(ID)
);

CREATE TABLE PERSONA
(
DNI VARCHAR2(10),
NOMBRE VARCHAR2(10) NOT NULL,
FECH_NAC DATE,
SEXO VARCHAR2(5) DEFAULT 'H' CHECK (SEXO IN ('H', 'M')),  
ID_VIVIENDA VARCHAR2(10),
CONSTRAINT PK_PERSONA PRIMARY KEY (DNI),
CONSTRAINT FK1_PERSONA FOREIGN KEY (ID_VIVIENDA) REFERENCES VIVIENDA(ID)
);

CREATE TABLE CABEZA_FAMILIA
(
DNI VARCHAR2(10),
ID_VIVIENDA VARCHAR2(10) UNIQUE,
CONSTRAINT PK_CABEZA_FAMILIA PRIMARY KEY (DNI),
CONSTRAINT FK1_CABEZA_FAMILIA FOREIGN KEY (DNI) REFERENCES PERSONA(DNI),
CONSTRAINT FK2_CABEZA_FAMILIA FOREIGN KEY (ID_VIVIENDA) REFERENCES VIVIENDA(ID)
);

CREATE TABLE POSEE
(
DNI VARCHAR2(10),
ID_VIVIENDA VARCHAR2(10),
CONSTRAINT PK_POSEE PRIMARY KEY (DNI,ID_VIVIENDA),
CONSTRAINT FK1_POSEE FOREIGN KEY (DNI) REFERENCES PERSONA(DNI),
CONSTRAINT FK2_POSEE FOREIGN KEY (ID_VIVIENDA) REFERENCES VIVIENDA(ID)
);
