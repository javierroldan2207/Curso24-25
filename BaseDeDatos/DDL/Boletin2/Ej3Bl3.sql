CREATE TABLE EQUIPOS (
    CODEQUIPO VARCHAR2(4),
    NOMBRE VARCHAR2(30) NOT NULL,
    LOCALIDAD VARCHAR2(15),
    GOLESMARCADOS NUMBER(3)
);

CREATE TABLE JUGADORES (
    CODJUGADOR VARCHAR2(4),
    NOMBRE VARCHAR2(30) NOT NULL,
    FECHA_NACIMIENTO DATE,
    DEMARCACION VARCHAR2(10) CHECK (DEMARCACION IN ('Portero', 'Defensa', 'Medio', 'Delantero')),
    CODEQUIPO VARCHAR2(4),
    CONSTRAINT CK_JUGADOR_NOMBRE CHECK (REGEXP_LIKE(NOMBRE, '^[A-Z][a-z]*([ ]+[A-Z][a-z]*)*$'))
);

CREATE TABLE PARTIDOS (
    CODPARTIDO VARCHAR2(4),
    CODEQUIPOLocal VARCHAR2(4),
    CODEQUIPOVisitante VARCHAR2(4),
    FECHA DATE CHECK (TO_CHAR(FECHA, 'MM') NOT IN ('07', '08')),
    COMPETICION VARCHAR2(4) CHECK (COMPETICION IN ('Copa', 'Liga')),
    JORNADA VARCHAR2(20)
);

CREATE TABLE INCIDENCIAS (
    NUMINCIDENCIA VARCHAR2(6),
    CODPARTIDO VARCHAR2(4),
    CODJUGADOR VARCHAR2(4),
    MINUTO NUMBER(2) CHECK (MINUTO BETWEEN 1 AND 100),
    TIPO VARCHAR2(20)
);


ALTER TABLE EQUIPOS ADD CONSTRAINT PK_EQUIPOS PRIMARY KEY (CODEQUIPO);
ALTER TABLE JUGADORES ADD CONSTRAINT PK_JUGADORES PRIMARY KEY (CODJUGADOR);
ALTER TABLE PARTIDOS ADD CONSTRAINT PK_PARTIDOS PRIMARY KEY (CODPARTIDO);
ALTER TABLE INCIDENCIAS ADD CONSTRAINT PK_INCIDENCIAS PRIMARY KEY (NUMINCIDENCIA);

ALTER TABLE JUGADORES ADD CONSTRAINT FK_JUGADORES_EQUIPO FOREIGN KEY (CODEQUIPO) REFERENCES EQUIPOS (CODEQUIPO);
ALTER TABLE PARTIDOS ADD CONSTRAINT FK_PARTIDOS_EQUIPOLocal FOREIGN KEY (CODEQUIPOLocal) REFERENCES EQUIPOS (CODEQUIPO);
ALTER TABLE PARTIDOS ADD CONSTRAINT FK_PARTIDOS_EQUIPOVisitante FOREIGN KEY (CODEQUIPOVisitante) REFERENCES EQUIPOS (CODEQUIPO);
ALTER TABLE INCIDENCIAS ADD CONSTRAINT FK_INCIDENCIAS_PARTIDO FOREIGN KEY (CODPARTIDO) REFERENCES PARTIDOS (CODPARTIDO);
ALTER TABLE INCIDENCIAS ADD CONSTRAINT FK_INCIDENCIAS_JUGADOR FOREIGN KEY (CODJUGADOR) REFERENCES JUGADORES (CODJUGADOR);
