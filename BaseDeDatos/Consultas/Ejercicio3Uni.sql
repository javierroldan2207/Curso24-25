--1. Cuantos costes básicos hay.
SELECT COUNT(A.COSTEBASICO) COSTE_BASICO
FROM ASIGNATURA a ;

--2. Para cada titulación mostrar el número de asignaturas que hay junto con el nombre de la titulación.
SELECT A.NOMBRE, COUNT(A.IDASIGNATURA) ASIGNATURAS
FROM ASIGNATURA a 
GROUP BY A.IDTITULACION, A.NOMBRE;


--3. Para cada titulación mostrar el nombre de la titulación junto con el precio total de todas sus asignaturas.
SELECT T.NOMBRE TITULACION, SUM(A.COSTEBASICO)
FROM TITULACION t 
JOIN ASIGNATURA a ON T.IDTITULACION = A.IDTITULACION
GROUP BY T.NOMBRE;

--4. Cual sería el coste global de cursar la titulación de Matemáticas si el coste de cada asignatura fuera incrementado en un 7%. 
SELECT SUM(A.COSTEBASICO*1.07) COSTE_TOTAL
FROM ASIGNATURA a 
JOIN TITULACION t ON A.IDTITULACION = T.IDTITULACION
WHERE T.NOMBRE LIKE 'Matemáticas';

--5.Cuantos alumnos hay matriculados en cada asignatura, junto al id de la asignatura. 
SELECT AA.IDASIGNATURA ,COUNT(AA.IDALUMNO)
FROM ALUMNO_ASIGNATURA aa 
GROUP BY AA.IDASIGNATURA;

--6.Igual que el anterior pero mostrando el nombre de la asignatura.
SELECT  A.NOMBRE, COUNT(AA.IDALUMNO)
FROM ALUMNO_ASIGNATURA aa 
RIGHT JOIN ASIGNATURA a ON AA.IDASIGNATURA = A.IDASIGNATURA
GROUP BY A.IDASIGNATURA, A.NOMBRE;

--7.Mostrar para cada alumno, el nombre del alumno junto con lo que tendría que pagar por el total de todas las asignaturas 
--en las que está matriculada. Recuerda que el precio de la matrícula tiene un incremento
-- de un 10% por cada año en el que esté matriculado. 
SELECT P.NOMBRE AS ALUMNO,SUM(A.COSTEBASICO * (1 + (0.1 * (S.CURSO - 1)))) AS TOTALPAGAR
FROM ALUMNO_ASIGNATURA AA 
JOIN ALUMNO AL ON AA.IDALUMNO = AL.IDALUMNO 
JOIN PERSONA P ON AL.DNI = P.DNI 
JOIN ASIGNATURA A ON AA.IDASIGNATURA = A.IDASIGNATURA 
JOIN ASIGNATURA S ON A.IDASIGNATURA = S.IDASIGNATURA
GROUP BY P.NOMBRE;

--8.Coste medio de las asignaturas de cada titulación, para aquellas titulaciones en el que el coste total de la 1ª matrícula sea mayor que 60 euros. 
SELECT T.NOMBRE, AVG(A.COSTEBASICO) AS COSTE_MEDIO
FROM TITULACION T
JOIN ASIGNATURA A ON T.IDTITULACION = A.IDTITULACION
GROUP BY T.NOMBRE
HAVING SUM(A.COSTEBASICO) > 60;

--9.Nombre de las titulaciones  que tengan más de tres alumnos.
SELECT T.NOMBRE
FROM TITULACION T
JOIN ASIGNATURA A ON T.IDTITULACION = A.IDTITULACION
JOIN ALUMNO_ASIGNATURA AA ON A.IDASIGNATURA = AA.IDASIGNATURA
GROUP BY T.NOMBRE
HAVING COUNT(AA.IDALUMNO) > 3;

--10.Nombre de cada ciudad junto con el número de personas que viven en ella.
SELECT P.CIUDAD, COUNT(P.DNI) AS NUM_PERSONAS
FROM PERSONA P
GROUP BY P.CIUDAD;

--11.Nombre de cada profesor junto con el número de asignaturas que imparte.
SELECT P.NOMBRE, COUNT(A.IDASIGNATURA) AS NUM_ASIGNATURAS
FROM PROFESOR PR
JOIN PERSONA P ON PR.DNI = P.DNI
JOIN ASIGNATURA A ON PR.IDPROFESOR = A.IDPROFESOR
GROUP BY P.NOMBRE;

--12.Nombre de cada profesor junto con el número de alumnos que tiene, para aquellos profesores que tengan dos o más de 2 alumnos.
SELECT P.NOMBRE, COUNT(AA.IDALUMNO) AS NUM_ALUMNOS
FROM PROFESOR PR
JOIN PERSONA P ON PR.DNI = P.DNI
JOIN ASIGNATURA A ON PR.IDPROFESOR = A.IDPROFESOR
JOIN ALUMNO_ASIGNATURA AA ON A.IDASIGNATURA = AA.IDASIGNATURA
GROUP BY P.NOMBRE
HAVING COUNT(AA.IDALUMNO) >= 2;

--13.Obtener el máximo de las sumas de los costesbásicos de cada cuatrimestre
SELECT A.CUATRIMESTRE, MAX(SUM(A.COSTEBASICO)) AS MAX_COSTE
FROM ASIGNATURA A
GROUP BY A.CUATRIMESTRE;

--14.Suma del coste de las asignaturas
SELECT SUM(COSTEBASICO) AS TOTAL_COSTE
FROM ASIGNATURA;

--15.¿Cuántas asignaturas hay?
SELECT COUNT(A.IDASIGNATURA)
FROM ASIGNATURA a ;

--16.Coste de la asignatura más cara y de la más barata
SELECT MAX(COSTEBASICO) AS COSTE_MAXIMO, MIN(COSTEBASICO) AS COSTE_MINIMO
FROM ASIGNATURA;

--17.¿Cuántas posibilidades de créditos de asignatura hay?
SELECT COUNT(DISTINCT CREDITOS) AS NUM_POSSIBILIDADES_CREDITOS
FROM ASIGNATURA;

--18.¿Cuántos cursos hay?
SELECT COUNT(DISTINCT A.CURSO) AS CURSOS
FROM ASIGNATURA a ;

--19.¿Cuántas ciudades hau?
SELECT COUNT(DISTINCT P.CIUDAD)
FROM PERSONA p ;

--20.Nombre y número de horas de todas las asignaturas.
SELECT NOMBRE, CREDITOS AS NUM_HORAS
FROM ASIGNATURA;

--21.Mostrar las asignaturas que no pertenecen a ninguna titulación.
SELECT NOMBRE
FROM ASIGNATURA
WHERE IDTITULACION IS NULL;

--22.Listado del nombre completo de las personas, sus teléfonos y sus direcciones, llamando a la columna del nombre "NombreCompleto" y a la de direcciones "Direccion".
SELECT (P.NOMBRE ||' '|| P.APELLIDO) AS NOMBRE_COMPLETO, P.TELEFONO, P.DIRECCIONCALLE ||' '|| P.DIRECCIONNUM AS DIRECCION
FROM PERSONA P;

--23.Cual es el día siguiente al día en que nacieron las personas de la B.D.
SELECT FECHA_NACIMIENTO, FECHA_NACIMIENTO + 1 AS DIA_SIGUIENTE
FROM PERSONA;

--24.Años de las personas de la Base de Datos, esta consulta tiene que valor para cualquier momento
--25.Listado de personas mayores de 25 años ordenadas por apellidos y nombre, esta consulta tiene que valor para cualquier momento
--26.Nombres completos de los profesores que además son alumnos
SELECT (P.NOMBRE || ' ' || P.APELLIDO) AS NOMBRECOMPLETO
FROM PERSONA P
JOIN ALUMNO A ON P.DNI = A.DNI
JOIN PROFESOR PR ON P.DNI = PR.DNI;

--27.Suma de los créditos de las asignaturas de la titulación de Matemáticas
SELECT SUM(A.CREDITOS) AS SUMA_CREDITOS
FROM ASIGNATURA A
JOIN TITULACION T ON A.IDTITULACION = T.IDTITULACION
WHERE T.NOMBRE = 'Matemáticas';

--28.Número de asignaturas de la titulación de Matemáticas
SELECT COUNT(A.IDASIGNATURA) AS NUMERO_ASIGNATURAS
FROM ASIGNATURA A
JOIN TITULACION T ON A.IDTITULACION = T.IDTITULACION
WHERE T.NOMBRE = 'Matemáticas';

--29.¿Cuánto paga cada alumno por su matrícula?
SELECT P.NOMBRE || ' ' || P.APELLIDO AS NOMBRECOMPLETO, SUM(A.COSTEBASICO * (1 + (0.1 * (S.CURSO - 1)))) AS TOTALPAGAR
FROM ALUMNO_ASIGNATURA AA
JOIN ALUMNO AL ON AA.IDALUMNO = AL.IDALUMNO
JOIN PERSONA P ON AL.DNI = P.DNI
JOIN ASIGNATURA A ON AA.IDASIGNATURA = A.IDASIGNATURA
JOIN ASIGNATURA S ON A.IDASIGNATURA = S.IDASIGNATURA
GROUP BY P.NOMBRE, P.APELLIDO;

--30.¿Cuántos alumnos hay matriculados en cada asignatura?
SELECT A.NOMBRE AS ASIGNATURA, COUNT(AA.IDALUMNO) AS NUMERO_ALUMNOS
FROM ALUMNO_ASIGNATURA AA
JOIN ASIGNATURA A ON AA.IDASIGNATURA = A.IDASIGNATURA
GROUP BY A.NOMBRE;
























