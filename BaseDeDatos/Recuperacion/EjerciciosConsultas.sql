CREATE TABLE EMPRESA(
CIF VARCHAR2(20),
NOMBRE VARCHAR2(25),
DIRECCION VARCHAR2(50),
CONSTRAINT PK_EMPRESA PRIMARY KEY (CIF)
);


CREATE TABLE PERSONA(
DNI VARCHAR2(10),
NOMBRE VARCHAR2(25),
APELLIDOS VARCHAR2(50),
EMPRESA VARCHAR2(50),
SALARIO NUMBER(10),
CONSTRAINT PK_PERSONA PRIMARY KEY (DNI),
CONSTRAINT FK_PERSONA FOREIGN KEY(EMPRESA) REFERENCES EMPRESA(CIF)
);


CREATE TABLE PADREMADRE(
DNIPADREMADRE VARCHAR2(10),
DNIHIJO VARCHAR2(10),
CONSTRAINT PK_PADREMADRE PRIMARY KEY(DNIPADREMADRE,DNIHIJO),
CONSTRAINT FK_PADREMADRE FOREIGN KEY (DNIPADREMADRE) REFERENCES PERSONA(DNI),
CONSTRAINT FK2_PADREMADRE FOREIGN KEY (DNIHIJO) REFERENCES PERSONA(DNI)
);

-----------INSERTS----------
INSERT INTO EMPRESA (cif, nombre, direccion) VALUES ('E001', 'Telec', 'Av. Tecnología 123');
INSERT INTO EMPRESA (cif, nombre, direccion) VALUES ('E002', 'Edific', 'Calle Verde 456');
INSERT INTO EMPRESA (cif, nombre, direccion) VALUES ('E003', 'NttD', 'Paseo Obra 789');
INSERT INTO EMPRESA (cif, nombre, direccion) VALUES ('E004', 'Sisi', 'Sevilla');


INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P001', 'Juan', 'Pérez Gómez', 'E001', 3000);
INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P002', 'María', 'López Díaz', 'E001', 2800);
INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P010', 'Mario', 'López Magro', 'E004', 2800);


INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P003', 'Pepe', 'Pérez Pérez', 'E002', 2000);

INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P004', 'Ana', 'García Ruiz', 'E002', 2500);
INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P005', 'Luis', 'Martín Torres', 'E002', 2700);
INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P006', 'Clara', 'Hernández Lara', 'E003', 1800);
INSERT INTO PERSONA (dni, nombre, apellidos, empresa, salario) VALUES ('P007', 'Pedro', 'Jiménez Navas', 'E003', 3100);


--1.Obtener el nombre y apellido del padre y de la madre de “Pepe Pérez Pérez”.

SELECT p_padre.nombre, p_padre.apellidos
FROM PADREMADRE pm
JOIN PERSONA p_hijo ON pm.dniHijo = p_hijo.dni
JOIN PERSONA p_padre ON pm.dniPadreMadre = p_padre.dni
WHERE p_hijo.nombre = 'Pepe' AND p_hijo.apellidos = 'Pérez Pérez';


/*2. Obtener un listado con el nombre de las empresas y el total de los salarios de
todos los empleados de la empresa ordenados de forma que las empresas que
gasten más dinero en sus salarios se muestren al principio.*/

SELECT E .NOMBRE, SUM(SALARIO) AS TOTAL_SALARIO
FROM PERSONA P
JOIN EMPRESA E ON P.EMPRESA = E.CIF
GROUP BY E.NOMBRE
ORDER BY  TOTAL_SALARIO DESC;

/*3. Subir el salario un 10% a todas las personas que trabajen en las empresas de
Sevilla (Considere que en el campo dirección se encuentra entre otros datos la
provincia).*/

SELECT SALARIO+(SALARIO*0.10) AS AUMENTO_SUELDO
FROM PERSONA P
JOIN EMPRESA E ON P.EMPRESA  = E.CIF
WHERE E.DIRECCION LIKE 'Sevilla';


/*4. Mostrar el nombre y apellido de las personas que cobran más que la media del
salario de todas personas que están recogidas en la base de datos.*/


SELECT NOMBRE, P.APELLIDOS
FROM PERSONA P
WHERE SALARIO > (
	SELECT AVG(SALARIO)
	FROM PERSONA
);



































