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


