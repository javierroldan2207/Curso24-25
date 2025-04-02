/*1. Escribe un procedimiento que muestre el número de empleados y el salario
mínimo, máximo y medio del departamento de FINANZAS. Debe hacerse
uso de cursores implícitos, es decir utilizar SELECT ... INTO.*/

CREATE OR REPLACE PROCEDURE datos IS  
	v_num NUMBER;
	v_mi_sal NUMBER;
	v_max_sal NUMBER;
	v_med_sal NUMBER;
BEGIN 
	SELECT count(*),min(e.SALAR),max(e.salar),avg(e.salar) INTO v_num, v_mi_sal, v_max_sal, v_med_sal
	FROM  empleados e
	JOIN departamentos d ON d.NUMDE = e.NUMDE 
	WHERE d.NOMDE  = 'FINANZAS';

	DBMS_OUTPUT.PUT_LINE('Numero de empleados: ' || v_num);
	DBMS_OUTPUT.PUT_LINE('Salario minimo: ' || v_mi_sal);
	DBMS_OUTPUT.PUT_LINE('Salrio maximo: ' || v_max_sal);
	DBMS_OUTPUT.PUT_LINE('Media del salario: ' || v_med_sal);
END;


BEGIN
	datos;
END;

/*2. Escribe un procedimiento que suba un 10% el salario a los EMPLEADOS
con más de 2 hijos y que ganen menos de 2000 €. Para cada empleado se
mostrar por pantalla el código de empleado, nombre, salario anterior y final.
Utiliza un cursor explícito. La transacción no puede quedarse a medias. Si
por cualquier razón no es posible actualizar todos estos salarios, debe
deshacerse el trabajo a la situación inicial.*/

CREATE OR REPLACE PROCEDURE subida_salario IS
	v_id NUMBER;
	v_nombre VARCHAR2(30);
	v_salario NUMBER;
	v_salario_final NUMBER;
BEGIN
	SELECT e.NUMDE, e.NOMEM, e.SALAR INTO v_id, v_nombre, v_salario
	FROM EMPLEADOS e 
	WHERE e.NUMHI > 2
	AND e.SALAR < 2000;
	
END



SELECT e.NUMDE, e.NOMEM, e.SALAR
FROM EMPLEADOS e 
WHERE e.NUMHI > 2
AND e.SALAR < 2000;























