CREATE TABLE TEMA (
    cod_tema NUMBER PRIMARY KEY,
    denominacion VARCHAR2(100) NOT NULL,
    cod_tema_padre NUMBER,
    CONSTRAINT fk_cod_tema_padre FOREIGN KEY (cod_tema_padre) REFERENCES TEMA (cod_tema) 
        ON DELETE SET NULL,
    CONSTRAINT chk_cod_tema_padre CHECK (cod_tema_padre IS NULL OR cod_tema_padre >= cod_tema)
);

CREATE TABLE LIBRO (
    cod_libro NUMBER PRIMARY KEY,
    titulo VARCHAR2(200) NOT NULL,
    f_creacion DATE NOT NULL,
    cod_tema NUMBER NOT NULL,
    autor_principal NUMBER NOT NULL,
    CONSTRAINT fk_cod_tema FOREIGN KEY (cod_tema) REFERENCES TEMA (cod_tema),
    CONSTRAINT fk_autor_principal FOREIGN KEY (autor_principal) REFERENCES AUTOR (cod_autor) 
        ON DELETE RESTRICT
);

CREATE TABLE AUTOR (
    cod_autor NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    f_nacimiento DATE NOT NULL,
    libro_principal NUMBER,
    CONSTRAINT fk_libro_principal FOREIGN KEY (libro_principal) REFERENCES LIBRO (cod_libro)
);


CREATE TABLE LIBRO_AUTOR (
    cod_libro NUMBER,
    cod_autor NUMBER,
    orden NUMBER CHECK (orden BETWEEN 1 AND 5),
    PRIMARY KEY (cod_libro, cod_autor),
    CONSTRAINT fk_libro FOREIGN KEY (cod_libro) REFERENCES LIBRO (cod_libro),
    CONSTRAINT fk_autor FOREIGN KEY (cod_autor) REFERENCES AUTOR (cod_autor)
);

CREATE TABLE EDITORIAL (
    cod_editorial NUMBER PRIMARY KEY,
    denominacion VARCHAR2(150) NOT NULL
);

CREATE TABLE PUBLICACIONES (
    cod_editorial NUMBER,
    cod_libro NUMBER,
    precio NUMBER NOT NULL CHECK (precio > 0),
    f_publicacion DATE DEFAULT SYSDATE NOT NULL,
    PRIMARY KEY (cod_editorial, cod_libro),
    CONSTRAINT fk_cod_editorial FOREIGN KEY (cod_editorial) REFERENCES EDITORIAL (cod_editorial) 
        ON DELETE CASCADE,
    CONSTRAINT fk_cod_libro FOREIGN KEY (cod_libro) REFERENCES LIBRO (cod_libro)
);

