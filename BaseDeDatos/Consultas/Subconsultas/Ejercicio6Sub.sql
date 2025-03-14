--1. Mostrar el identificador de los alumnos matriculados en cualquier asignatura excepto la '150212' y la '130113'.
SELECT A.IDALUMNO
FROM ALUMNO_ASIGNATURA a
WHERE A.IDASIGNATURA NOT IN ('150212','130113');

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

--5. Mostrar el nombre de las asignaturas de la titulación "130110" cuyos costes básicos sobrepasen el coste básico promedio por asignatura en esa titulación.
SELECT  A.NOMBRE
FROM ASIGNATURA a 
WHERE A.IDTITULACION = '130110'
AND a.COSTEBASICO >= (SELECT AVG(A1.COSTEBASICO)
					 FROM ASIGNATURA a1
					 WHERE A.IDTITULACION = '130110');

--6.Mostrar el identificador de los alumnos matriculados en cualquier asignatura excepto la "150212" y la "130113”
SELECT AA.IDALUMNO  
FROM ALUMNO_ASIGNATURA aa 
WHERE AA.IDASIGNATURA NOT IN ('150212','130113');



--7.Mostrar el Id de los alumnos matriculados en la asignatura "150212" pero no en la "130113". 
SELECT AA.IDALUMNO
FROM ALUMNO_ASIGNATURA aa 
WHERE AA.IDASIGNATURA = '150212'
AND NOT EXISTS (SELECT DISTINCT AA2.IDASIGNATURA
						FROM ALUMNO_ASIGNATURA aa2
						WHERE AA2.IDALUMNO = AA.IDALUMNO 
						AND AA2.IDASIGNATURA = '130113');

--8.Mostrar el nombre de las asignaturas que tienen más créditos que "Seguridad Vial". 
SELECT  A.NOMBRE
FROM ASIGNATURA a 
WHERE A.CREDITOS > (SELECT A.CREDITOS
					FROM ASIGNATURA a 
					WHERE A.NOMBRE LIKE 'Seguridad Vial');

--9.Mostrar las personas que no son ni profesores ni alumnos.
SELECT  P.NOMBRE, P.APELLIDO
FROM PERSONA p 
WHERE NOT EXISTS(SELECT *
				 FROM PROFESOR pr 
				 WHERE PR.DNI = P.DNI )
AND NOT EXISTS(SELECT *
			   FROM ALUMNO a 
			   WHERE A.DNI = P.DNI);

--10.Mostrar el nombre de las asignaturas que tengan más créditos.
SELECT A.NOMBRE
FROM ASIGNATURA a
WHERE A.CREDITOS = (SELECT MAX(A1.CREDITOS)
					FROM ASIGNATURA a1);

--11.Lista de asignaturas en las que no se ha matriculado nadie. 
SELECT a.idasignatura, a.nombre
FROM asignatura a
WHERE NOT EXISTS (
    SELECT 1 
    FROM alumno_asignatura aa
    WHERE aa.idasignatura = a.idasignatura);

--12.Ciudades en las que vive algún profesor y también algún alumno. 
SELECT DISTINCT P.CIUDAD
FROM PERSONA p
WHERE EXISTS (SELECT *
			  FROM PROFESOR p1
			  WHERE P1.DNI = P.DNI )
AND EXISTS (SELECT *
			  FROM ALUMNO a 
			  WHERE A.DNI = P.DNI);




















