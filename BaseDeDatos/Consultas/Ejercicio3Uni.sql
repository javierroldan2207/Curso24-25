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

--8.Coste medio de las asignaturas de cada titulación, para aquellas titulaciones en el que el coste total de la 1ª matrícula sea mayor que 60 euros. 

--9.Nombre de las titulaciones  que tengan más de tres alumnos.

--10.Nombre de cada ciudad junto con el número de personas que viven en ella.

























