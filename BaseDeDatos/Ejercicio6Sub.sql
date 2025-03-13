--1. Mostrar el identificador de los alumnos matriculados en cualquier asignatura excepto la '150212' y la '130113'.
SELECT A.IDALUMNO
FROM ALUMNO_ASIGNATURA a
WHERE A.IDASIGNATURA NOT IN  ('150212','130113');

-- 2. Mostrar el nombre de las asignaturas que tienen más créditos que "Seguridad Vial". 
SELECT  A.NOMBRE
FROM ASIGNATURA a
WHERE A.CREDITOS > (SELECT a1.CREDITOS 
					FROM ASIGNATURA a1 
					WHERE A1.NOMBRE LIKE 'Seguridad Vial');
--3. Obtener el Id de los alumnos matriculados en las asignaturas "150212" y "130113" a la vez. 
SELECT AA.IDALUMNO
FROM ALUMNO_ASIGNATURA aa 
WHERE AA.IDASIGNATURA IN ('150212','130113')
GROUP BY aa.IDALUMNO 
HAVING COUNT(DISTINCT AA.IDASIGNATURA) = 2 ;
--4. Mostrar el Id de los alumnos matriculados en las asignatura "150212" ó "130113", en una o en otra pero no en ambas a la vez. 
SELECT AA.IDALUMNO
FROM ALUMNO_ASIGNATURA aa 
WHERE AA.IDASIGNATURA IN ('150212','130113')
GROUP BY aa.IDALUMNO 
HAVING COUNT(DISTINCT AA.IDASIGNATURA) = 1;
