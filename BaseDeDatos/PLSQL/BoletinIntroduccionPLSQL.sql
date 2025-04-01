--1 Crea un procedimiento llamado ESCRIBE para mostrar por pantalla el mensaje HOLA MUNDO.
CREATE OR REPLACE 
PROCEDURE HOLA_MUNDO IS 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('Hola mundo.');
END HOLA_MUNDO;

BEGIN
	HOLA_MUNDO;
END;

--2 Crea un procedimiento llamado ESCRIBE_MENSAJE que tenga un parámetro de tipo VARCHAR2 que recibe un texto y lo muestre por pantalla.
CREATE OR REPLACE PROCEDURE ESCRIBE_MENSAJE (mensaje IN VARCHAR2) 
IS
BEGIN 
	   DBMS_OUTPUT.PUT_LINE(mensaje);
END ESCRIBE_MENSAJE;

BEGIN
	ESCRIBE_MENSAJE('Hola buenos dias.');
END;

--3 . Crea un procedimiento llamado SERIE que muestre por pantalla una serie de números desde un mínimo hasta un máximo con un determinado paso.
CREATE OR REPLACE PROCEDURE SERIE(minimo IN NUMBER , maximo IN NUMBER ,paso IN NUMBER)
IS 
num NUMBER;
BEGIN 
	num:=minimo;
	WHILE num <= maximo LOOP 
	DBMS_OUTPUT.PUT_LINE(num);
	num:= num + paso;
	END LOOP; 
END SERIE;

BEGIN
   SERIE(1, 10, 2);  
END;

--5 . Crea una función NOTA que reciba un parámetro que será una nota numérica
--entre 0 y 10 y devuelva una cadena de texto con la calificación (Suficiente,
--Bien, Notable, ...).
CREATE OR REPLACE PROCEDURE NOTA(nota IN NUMBER)
AS
	mensaje VARCHAR2(20);
BEGIN
	IF nota= 10 OR nota= 9 THEN
	mensaje:=('Sobresaliente');
	ELSIF nota= 8 OR nota= 7 THEN
	mensaje:=('Notable');
	ELSIF nota=5 OR nota= 6 THEN
	mensaje:=('Suficiente');
	ELSE 
	mensaje:=('Suspenso');
	END IF;
	DBMS_OUTPUT.PUT_LINE(mensaje);
END NOTA;

BEGIN 
	NOTA(8);
END;





















