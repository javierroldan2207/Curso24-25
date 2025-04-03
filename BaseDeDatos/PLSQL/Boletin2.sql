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
   CURSOR c_empleados IS
       SELECT e.NUMEM, e.NOMEM, e.SALAR
       FROM EMPLEADOS e
       WHERE e.NUMHI > 2
       AND e.SALAR < 2000;
BEGIN
	COMMIT;
   FOR emp IN c_empleados LOOP
       DBMS_OUTPUT.PUT_LINE('Empleado: ' || emp.NUMEM || ' , nombre: ' || emp.NOMEM);
       DBMS_OUTPUT.PUT_LINE('Salario antiguo: ' || emp.SALAR);
      
       UPDATE EMPLEADOS
       SET SALAR = emp.SALAR * 1.10
       WHERE NUMEM = emp.NUMEM;
      
       DBMS_OUTPUT.PUT_LINE('Salario final: ' || (emp.SALAR * 1.10));
   END LOOP;
   
EXCEPTION
   WHEN OTHERS THEN
       ROLLBACK;
END subida_salario;

+----------------------------------------------------------------------------------------------------++-+-+
BEGIN
   subida_salario;
END;


SELECT e.NUMDE, e.NOMEM, e.SALAR
FROM EMPLEADOS e 
WHERE e.NUMHI > 2
AND e.SALAR < 2000;



/*3. Escribe un procedimiento que reciba dos parámetros (número de
departamento, hijos). Deber. crearse un cursor explícito al que se le pasarán
estos parámetros y que mostrar. los datos de los empleados que pertenezcan
al departamento y con el número de hijos indicados. Al final se indicara el
número de empleados obtenidos.*/


CREATE OR REPLACE PROCEDURE BOLETIN2PLSQL.padre_hijo(v_dep NUMBER , v_hijos NUMBER) IS 

	CURSOR c_emp IS
	 SELECT  e.NUMHI, e.NUMDE
	 FROM EMPLEADOS e 
	 WHERE v_dep = e.NUMDE
	 AND v_hijos = e.NUMHI;

	v_cant NUMBER:=0;
BEGIN 
	FOR emp IN c_emp LOOP 
		DBMS_OUTPUT.PUT_LINE('Numero departamento: ' || v_dep);
		DBMS_OUTPUT.PUT_LINE('Numero de hijos ' || v_hijos);
		v_cant:= v_cant + 1;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Numeros de empleados: ' || v_cant);
END padre_hijo;


BEGIN 
	padre_hijo(121,3);
END;

/*4. Escribe un procedimiento con un parámetro para el nombre de empleado,
que nos muestre la edad de dicho empleado en años, meses y días.*/

CREATE OR REPLACE 
PROCEDURE mostrar_edad(v_nombre varchar2) IS 
	CURSOR c_edad IS 
	SELECT 
	INTO v_
	FROM EMPLEADOS e;
	
	
BEGIN 
	DBMS_OUTPUT.PUT_LINE(c_edad);
END mostrar_edad;

BEGIN 
	
END;

SELECT  e.FECNA - to_date(sysdate,'yyyy-mm-dd')
FROM EMPLEADOS e ;















