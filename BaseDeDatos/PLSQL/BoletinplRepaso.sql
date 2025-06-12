/*alter session set "_oracle_script"=true;  
create user B1PLRECU identified by B1PLRECU;
GRANT CONNECT, RESOURCE, DBA TO B1PLRECU;*/


CREATE TABLE DEPARTAMENTO(
NUM_DEP NUMBER(3),
NOMBRE VARCHAR2(50),
CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY(NUM_DEP)
);

CREATE TABLE tipo_pieza(
tipo varchar(2),
descripcion varchar2(25),
CONSTRAINT pk_Tipopieza PRIMARY KEY (tipo)
);

CREATE  TABLE empresa(
cif varchar2(9),
nombre varchar2(50),
telefono number(11,4),
direccion varchar2(50),
localidad varchar2(50),
provincia varchar2(50),
CONSTRAINT pk_empresa PRIMARY KEY (cif)
);

CREATE TABLE ALMACEN(
N_ALMACEN NUMBER(2),
DESCRIPCION VARCHAR2(1000),
DIRECCION VARCHAR2(200),
CONSTRAINT PK_ALMACEN PRIMARY KEY(N_ALMACEN)
);

CREATE TABLE pieza(
modelo number(2),
tipo varchar2(2),
precioVenta number(11,4),
CONSTRAINT pk_pieza PRIMARY KEY (modelo,tipo),
CONSTRAINT fk1_pieza FOREIGN KEY (tipo) REFERENCES tipo_pieza(tipo)
);


CREATE TABLE EXISTENCIA(
MODELO NUMBER(2),
TIPO VARCHAR2(2),
N_ALMACEN NUMBER(2),
CANTIDAD NUMBER(9),
CONSTRAINT PK_EXISTENCIA PRIMARY KEY(MODELO,TIPO,N_ALMACEN),
CONSTRAINT FK1_EXISTENCIA FOREIGN KEY(MODELO,TIPO) REFERENCES PIEZA(MODELO,TIPO),
CONSTRAINT FK3_EXISTENCEIA FOREIGN KEY(N_ALMACEN) REFERENCES ALMACEN(N_ALMACEN)
);


CREATE TABLE suministro(
cif varchar2(9),
modelo number(2),
tipo varchar2(2),
precio_Compra number(11,4),
CONSTRAINT pk_suministro PRIMARY KEY (cif,modelo,tipo),
CONSTRAINT fk1_suministro FOREIGN KEY (cif) REFERENCES empresa(cif),
CONSTRAINT fk2_suminstro FOREIGN KEY (modelo,TIPO) REFERENCES pieza(modelo,TIPO)
);

CREATE TABLE EMPLEADO(
EMP_NO NUMBER(3),
APELLIDO VARCHAR2(50),
SALARIO NUMBER(6,2),
OFICIO VARCHAR2(50),
FECHA_ALTA DATE,
N_ALMACEN NUMBER(2),
NUM_DEP NUMBER(3),
CONSTRAINT PK_EMPLEADO PRIMARY KEY(EMP_NO),
CONSTRAINT FK1_EMPLEADO FOREIGN KEY(N_ALMACEN) REFERENCES ALMACEN(N_ALMACEN),
CONSTRAINT FK2_EMPLEADO FOREIGN KEY(NUM_DEP) REFERENCES DEPARTAMENTO(NUM_DEP)
);


INSERT INTO empleado (emp_no,apellido,oficio)
values(127,'Roldan','Mecanico');

INSERT INTO DEPARTAMENTO (NUM_DEP, NOMBRE) VALUES (10, 'Logística');
INSERT INTO DEPARTAMENTO (NUM_DEP, NOMBRE) VALUES (20, 'Administración');
INSERT INTO TIPO_PIEZA (TIPO, DESCRIPCION) VALUES ('A1', 'Tornillo');
INSERT INTO TIPO_PIEZA (TIPO, DESCRIPCION) VALUES ('B2', 'Engranaje');
INSERT INTO EMPRESA (CIF, NOMBRE, TELEFONO, DIRECCION, LOCALIDAD, PROVINCIA)
VALUES ('A12345678', 'Tornillos S.A.', 9456, 'Calle Hierro 12', 'Sevilla', 'Sevilla');

INSERT INTO EMPRESA (CIF, NOMBRE, TELEFONO, DIRECCION, LOCALIDAD, PROVINCIA)
VALUES ('B87654321', 'Engranajes SL', 9139, 'Av. Rueda 8', 'Madrid', 'Madrid');
INSERT INTO ALMACEN (N_ALMACEN, DESCRIPCION, DIRECCION)
VALUES (1, 'Almacén central', 'Polígono Norte');

INSERT INTO ALMACEN (N_ALMACEN, DESCRIPCION, DIRECCION)
VALUES (2, 'Almacén secundario', 'Polígono Sur');
INSERT INTO PIEZA (MODELO, TIPO, PRECIOVENTA)
VALUES (1, 'A1', 0.15);

INSERT INTO PIEZA (MODELO, TIPO, PRECIOVENTA)
VALUES (2, 'B2', 1.20);
INSERT INTO EXISTENCIA (MODELO, TIPO, N_ALMACEN, CANTIDAD)
VALUES (1, 'A1', 1, 100);

INSERT INTO EXISTENCIA (MODELO, TIPO, N_ALMACEN, CANTIDAD)
VALUES (2, 'B2', 2, 50);
INSERT INTO SUMINISTRO (CIF, MODELO, TIPO, PRECIO_COMPRA)
VALUES ('A12345678', 1, 'A1', 0.10);

INSERT INTO SUMINISTRO (CIF, MODELO, TIPO, PRECIO_COMPRA)
VALUES ('B87654321', 2, 'B2', 0.90);
INSERT INTO EMPLEADO (EMP_NO, APELLIDO, SALARIO, OFICIO, FECHA_ALTA, N_ALMACEN, NUM_DEP)
VALUES (128, 'López', 1600.00, 'Auxiliar', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 2, 20);



--EJERCICIOS
--1a
DECLARE 
CURSOR cur_emp IS 
SELECT  apellido, oficio
FROM empleado
WHERE emp_no = 127;

v_apellido EMPLEADO.APELLIDO%TYPE;
v_oficio EMPLEADO.OFICIO%TYPE;

BEGIN
	OPEN cur_emp;
	FETCH cur_emp INTO v_apellido, v_oficio;

	CLOSE cur_emp;

	dbms_output.put_line(v_apellido);
	dbms_output.put_line(v_oficio);
END;

--1b
DECLARE 
	v_apellidos empleado.apellido%TYPE;

	CURSOR cur_empl IS 
	SELECT apellido 
	FROM empleado 
	WHERE num_dep = 20;
	
	BEGIN 
		OPEN cur_empl; 
	
		FETCH cur_empl INTO v_apellidos;
		
		CLOSE cur_empl;
		
		dbms_output.put_line(v_apellidos);
	END;
	

--2
DECLARE 
	v_apellido empleado.apellido%TYPE;
	v_fecha_alta empleado.fecha_alta%TYPE;

	CURSOR cur_emp IS 
	SELECT apellido, fecha_alta 
	FROM empleado 
	ORDER BY fecha_alta DESC;
BEGIN 
	OPEN cur_emp;
	LOOP 
	FETCH cur_emp INTO v_apellido,v_fecha_alta;
	EXIT WHEN cur_emp%NOTFOUND;
	dbms_output.put_line('Apellido: ' || v_apellido);
	dbms_output.put_line('Fecha alta: ' || v_fecha_alta);
	END LOOP;
	CLOSE cur_emp;

END;



--3
CREATE OR REPLACE TRIGGER t_sueldo
BEFORE INSERT OR UPDATE 
ON empleado
FOR EACH ROW 
DECLARE 
	v_salario empleado.salario%TYPE;
	v_oficio empleado.oficio%TYPE;
	v_salario_min empleado.salario%TYPE;
	v_salario_max empleado.salario%TYPE;

BEGIN 
	v_oficio := :NEW.oficio;
	v_salario := :NEW.salario;

	IF v_oficio = 'PRESIDENTE' THEN
		RETURN;
	END IF;
	
	SELECT min(salario),max(salario)
	INTO v_salario_min, v_salario_max
	FROM empleado
	WHERE oficio = v_oficio;
	
	IF v_salario < v_salario_min OR v_salario > v_salario_max THEN
		dbms_output.put_line('Error: no se puede añadir o modificar por no estar en el rango correcto de salario.');
	END IF;
END t_sueldo;

--casos de uso


INSERT INTO EMPLEADO (EMP_NO, APELLIDO, SALARIO, OFICIO, FECHA_ALTA, N_ALMACEN, NUM_DEP)
VALUES (101, 'GARCIA', 1000, 'VENDEDOR', SYSDATE, 1, 10);

INSERT INTO EMPLEADO (EMP_NO, APELLIDO, SALARIO, OFICIO, FECHA_ALTA, N_ALMACEN, NUM_DEP)
VALUES (102, 'LOPEZ', 1500, 'VENDEDOR', SYSDATE, 1, 10);

INSERT INTO EMPLEADO (EMP_NO, APELLIDO, SALARIO, OFICIO, FECHA_ALTA, N_ALMACEN, NUM_DEP)
VALUES (103, 'MARTIN', 2000, 'VENDEDOR', SYSDATE, 1, 10);

-- Un PRESIDENTE 
INSERT INTO EMPLEADO (EMP_NO, APELLIDO, SALARIO, OFICIO, FECHA_ALTA, N_ALMACEN, NUM_DEP)
VALUES (104, 'REY', 9999, 'PRESIDENTE', SYSDATE, 1, 10);



--4
CREATE OR REPLACE TRIGGER t_pieza 
AFTER UPDATE 
ON tipo_pieza
FOR EACH ROW 
DECLARE 
BEGIN 
	UPDATE tipo
	SET tipo = :NEW.tipo
	WHERE tipo = :OLD.tipo;
	
END t_pieza;
--
CREATE OR REPLACE TRIGGER t_existencia
AFTER UPDATE 
ON tipo_pieza
FOR EACH ROW 
BEGIN
	UPDATE existencia 
	SET tipo = :NEW.tipo
	WHERE tipo = :OLD.tipo;
	
END;
--
CREATE OR REPLACE TRIGGER t_suministro
AFTER UPDATE 
ON tipo_pieza
FOR EACH ROW 
BEGIN
	UPDATE suministro
	SET tipo = :NEW.tipo
	WHERE tipo = :OLD.tipo;

END t_suministro;



--casos de uso
INSERT INTO tipo_pieza (tipo, descripcion) VALUES ('AA', 'Tipo AA');
INSERT INTO tipo_pieza (tipo, descripcion) VALUES ('BB', 'Tipo BB');

INSERT INTO pieza (modelo, tipo, precioVenta) VALUES (1, 'AA', 100);
INSERT INTO pieza (modelo, tipo, precioVenta) VALUES (2, 'BB', 200);

INSERT INTO existencia (modelo, tipo, n_almacen, cantidad) VALUES (1, 'AA', 1, 50);
INSERT INTO existencia (modelo, tipo, n_almacen, cantidad) VALUES (2, 'BB', 1, 30);

INSERT INTO suministro (cif, modelo, tipo, precio_compra) VALUES ('A12345678', 1, 'AA', 90);
INSERT INTO suministro (cif, modelo, tipo, precio_compra) VALUES ('A12345678', 2, 'BB', 180);




UPDATE tipo_pieza
SET tipo = 'ZZ'
WHERE tipo = 'AA';

--5
CREATE SEQUENCE suministros_audit_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE suministros_audit(
tipo varchar2(2),
modelo number(2),
cif varchar2(9),
precio_viejo number(11,4),
precio_nuevo NUMBER(11,4),
fecha DATE,
CONSTRAINT pk_suministros_audit PRIMARY KEY (tipo, modelo, cif, fecha));


CREATE OR REPLACE TRIGGER t_modi_sumi
AFTER  UPDATE 
ON suministro 
FOR EACH ROW 
BEGIN 
	IF :OLD.precio_compra <> :NEW.precio_compra THEN 
	INSERT INTO suministros_audit(tipo, modelo,cif,precio_viejo,precio_nuevo,fecha)
	values(:OLD.tipo,:OLD.modelo,:OLD.cif,:OLD.precio_compra,:NEW.precio_compra,sysdate);
	END IF;
END;

SELECT * FROM suministro;

UPDATE SUMINISTRO s SET PRECIO_COMPRA = 120
WHERE s.CIF like 'A12345678' AND s.MODELO = 1 AND s.TIPO like 'A1';

SELECT * FROM SUMINISTRO s ;
SELECT * FROM SUMINISTROS_AUDIT sa ;



--6
CREATE OR REPLACE TRIGGER t_precio_bajo
BEFORE UPDATE  
ON pieza 
FOR EACH ROW 
DECLARE 
	v_menor_precio pieza.precioventa%TYPE;
BEGIN
	SELECT min(precio_compra)
	INTO v_menor_precio
	FROM suministro
	WHERE modelo = :NEW.modelo
	AND tipo = :NEW.tipo;
	
	
	IF :NEW.precioventa < v_menor_precio THEN 
		dbms_output.put_line('El precio es menor al permitido.');
	END IF;
END;

SELECT * FROM pieza;

UPDATE pieza SET precioVenta = 100 WHERE modelo = 1 AND tipo = 'AA';
UPDATE pieza SET precioVenta = 10 WHERE modelo = 1 AND tipo = 'AA';

SELECT * FROM suministro;


--7
CREATE OR REPLACE PROCEDURE mirar_apellido(v_depart IN departamento.nombre%TYPE )
AS
	v_apellido empleado.apellido%TYPE;

	CURSOR c_apellido IS 
	SELECT apellido
	FROM empleado e
	INNER JOIN  departamento d ON e.num_dep = d.num_dep
	WHERE nombre LIKE v_depart;
BEGIN
	
	OPEN c_apellido;
	LOOP
		FETCH c_apellido INTO v_apellido;
		EXIT WHEN c_apellido%notfound;
		dbms_output.put_line('Appelido: ' || v_apellido);
	END LOOP;
	CLOSE c_apellido;
END mirar_apellido;

--caso uso
BEGIN 
	mirar_apellido('Logística');
END;



	
















