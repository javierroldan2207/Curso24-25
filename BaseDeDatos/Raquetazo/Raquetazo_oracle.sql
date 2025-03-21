CREATE TABLE SOCIO (
    ID_SOCIO VARCHAR2(20),
    NOMBRE VARCHAR2(15),
    APELLIDO VARCHAR2(100),
    FEC_NACIMIENTO DATE,
    TELEFONO NUMBER,
    CORREO VARCHAR2(100),
    CONSTRAINT PK_SOCIO PRIMARY KEY (ID_SOCIO)
);

CREATE TABLE MEMBRESIA (
    ID_MEMBRESIA VARCHAR2(20),
    TIPO VARCHAR2(20),
    FEC_INICIO DATE,
    FEC_FIN DATE,
    ESTADO VARCHAR2(20),
    ID_SOCIO VARCHAR2(20),
    CONSTRAINT PK_MEMBRESIA PRIMARY KEY (ID_MEMBRESIA),
    CONSTRAINT FK1_MEMBRESIA FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO(ID_SOCIO)
);

CREATE TABLE ENTRENADOR (
    ID_ENTRENADOR VARCHAR2(20),
    NOMBRE VARCHAR2(20),
    ESPECIALIDAD VARCHAR2(20),
    DISPONIBILIDAD VARCHAR2(20),
    CONSTRAINT PK_ENTRENADOR PRIMARY KEY (ID_ENTRENADOR)
);

CREATE TABLE SESION_ENTRENAMIENTO (
    ID_SESION VARCHAR2(20),
    FECHA DATE,
    HORA DATE,
    ID_SOCIO VARCHAR2(20),
    ID_ENTRENADOR VARCHAR2(20),
    CONSTRAINT PK_SESION_ENTRENAMIENTO PRIMARY KEY (ID_SESION),
    CONSTRAINT FK1_SESION_ENTRENAMIENTO FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO(ID_SOCIO),
    CONSTRAINT FK2_SESION_ENTRENAMIENTO FOREIGN KEY (ID_ENTRENADOR) REFERENCES ENTRENADOR(ID_ENTRENADOR)
);

CREATE TABLE RESERVA (
    ID_RESERVA VARCHAR2(20),
    FECHA DATE,
    HORA_IN DATE,
    HORA_FIN DATE,
    ID_SOCIO VARCHAR2(20),
    CONSTRAINT PK_RESERVA PRIMARY KEY (ID_RESERVA),
    CONSTRAINT FK1_RESERVA FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO(ID_SOCIO)
);

CREATE TABLE PISTA (
    ID_PISTA VARCHAR2(20),
    NUMERO NUMBER,
    TIPO VARCHAR2(20),
    estado varchar2(20),
    ID_RESERVA VARCHAR2(20),
    CONSTRAINT PK_PISTA PRIMARY KEY (ID_PISTA),
    CONSTRAINT FK1_PISTA FOREIGN KEY (ID_RESERVA) REFERENCES RESERVA(ID_RESERVA)
);

CREATE TABLE TORNEO (
    ID_TORNEO VARCHAR2(20),
    NOMBRE VARCHAR2(20),
    FECHA DATE,
    CATEGORIA VARCHAR2(20),
    CONSTRAINT PK_TORNEO PRIMARY KEY (ID_TORNEO)
);

CREATE TABLE PARTICIPANTE (
    ID_PARTICIPANTE VARCHAR2(20),
    ID_SOCIO VARCHAR2(20),
    ID_TORNEO VARCHAR2(20),
    CONSTRAINT PK_PARTICIPANTE PRIMARY KEY (ID_PARTICIPANTE),
    CONSTRAINT FK1_SOCIO FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO(ID_SOCIO),
    CONSTRAINT FK2_TORNEO FOREIGN KEY (ID_TORNEO) REFERENCES TORNEO(ID_TORNEO)
);


ALTER TABLE PISTA ADD CONSTRAINT CHK_PISTA_TIPO CHECK (TIPO IN ('Cubierta', 'Descubierta'));

ALTER TABLE PISTA ADD CONSTRAINT CHK_PISTA_ESTADO CHECK (ESTADO IN ('Disponible', 'En mantenimiento'));

CREATE SEQUENCE SEQ_ID_RESERVA
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE SEQ_ID_PISTA
START WITH 1
INCREMENT BY 1;




INSERT INTO SOCIO (ID_SOCIO, NOMBRE, APELLIDO, FEC_NACIMIENTO, TELEFONO, CORREO) 
VALUES ('1', 'Juan', 'Perez', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 123456789, 'juan.perez@email.com');

INSERT INTO MEMBRESIA (ID_MEMBRESIA, TIPO, FEC_INICIO, FEC_FIN, ESTADO, ID_SOCIO) 
VALUES ('M001', 'Anual', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Activo', '1');

INSERT INTO ENTRENADOR (ID_ENTRENADOR, NOMBRE, ESPECIALIDAD, DISPONIBILIDAD) 
VALUES ('432', 'Carlos Sanchez', 'Padel', 'Lunes a Viernes');

INSERT INTO SESION_ENTRENAMIENTO (ID_SESION, FECHA, HORA, ID_SOCIO, ID_ENTRENADOR) 
VALUES ('234', TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-01-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', 'E001');

INSERT INTO RESERVA (ID_RESERVA, FECHA, HORA_IN, HORA_FIN, ID_SOCIO) 
VALUES (SEQ_ID_RESERVA.NEXTVAL, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-01-15 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-01-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1');

INSERT INTO PISTA (ID_PISTA, NUMERO, TIPO, ESTADO, ID_RESERVA) 
VALUES (SEQ_ID_PISTA.NEXTVAL, 1, 'Cubierta', 'Disponible');

INSERT INTO TORNEO (ID_TORNEO, NOMBRE, FECHA, CATEGORIA) 
VALUES ('2', 'Torneo de Verano', TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'Adultos');

INSERT INTO PARTICIPANTE (ID_PARTICIPANTE, ID_SOCIO, ID_TORNEO) 
VALUES ('21', '1', '2');











