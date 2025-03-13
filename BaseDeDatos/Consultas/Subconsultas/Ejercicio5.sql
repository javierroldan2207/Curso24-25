--1.Número de clientes que tienen alguna factura con IVA 16%.
SELECT COUNT(*) 
FROM clientes 
WHERE codcli IN (
    SELECT codcli 
    FROM facturas 
    WHERE iva = 16
);

--2.Número de clientes que no tienen ninguna factura con un 16% de IVA.
SELECT COUNT(*) 
FROM clientes 
WHERE codcli NOT IN (
    SELECT codcli 
    FROM facturas 
    WHERE iva = 16
);

--3.Número de clientes que en todas sus facturas tienen un 16% de IVA (los clientes deben tener al menos una factura).
SELECT COUNT(*) 
FROM clientes c
WHERE codcli IN (
    SELECT codcli 
    FROM facturas 
    GROUP BY codcli
    HAVING MIN(iva) = 16 AND MAX(iva) = 16
);

--4.Fecha de la factura con mayor importe (sin tener en cuenta descuentos ni impuestos).

--5.Número de pueblos en los que no tenemos clientes.
SELECT COUNT(*) 
FROM pueblos 
WHERE codpue NOT IN (
    SELECT codpue FROM clientes
);

--6.Número de artículos cuyo stock supera las 20 unidades, con precio superior a 15 euros y de los que no hay ninguna factura en el último trimestre del año pasado.
SELECT COUNT(*) 
FROM articulos a
WHERE a.stock > 20 
AND a.precio > 15 
AND a.codart NOT IN (
    SELECT DISTINCT lf.codart 
    FROM lineas_fac lf
    JOIN facturas f ON lf.codfac = f.codfac
    WHERE f.fecha BETWEEN TO_DATE('2024-10-01', 'YYYY-MM-DD') 
                      AND TO_DATE('2024-12-31', 'YYYY-MM-DD')
);

--7.Obtener el número de clientes que en todas las facturas del año pasado han pagado IVA (no se ha pagado IVA si es cero o nulo).

--8.Clientes (código y nombre) que fueron preferentes durante el mes de noviembre del año pasado y que en diciembre de ese mismo año no tienen ninguna factura.
--Son clientes preferentes de un mes aquellos que han solicitado más de 60,50 euros en facturas durante ese mes, sin tener en cuenta descuentos ni impuestos.


--9.Código, descripción y precio de los diez artículos más caros.
SELECT codart, descrip, precio
FROM articulos a
WHERE a.precio IN (
    SELECT DISTINCT precio
    FROM articulos
    ORDER BY precio DESC
    FETCH FIRST 10 ROWS ONLY
);

--10.Nombre de la provincia con mayor número de clientes.
--11.Código y descripción de los artículos cuyo precio es mayor de 90,15 euros y se han vendido menos de 10 unidades (o ninguna) durante el año pasado.
SELECT A.CODART, A.DESCRIP
FROM ARTICULOS A
WHERE A.PRECIO > 90.15
AND A.CODART IN (
    SELECT L.CODART
    FROM LINEAS_FAC L
    JOIN FACTURAS F ON L.CODFAC = F.CODFAC
    WHERE L.CANT < 10
    AND EXTRACT(YEAR FROM F.FECHA) = EXTRACT(YEAR FROM SYSDATE) - 1
);


--12.Código y descripción de los artículos cuyo precio es más de tres mil veces mayor que el precio mínimo de cualquier artículo.
SELECT A.CODART, A.DESCRIP
FROM ARTICULOS A
WHERE A.PRECIO > (
    SELECT 3000 * MIN(PRECIO)
    FROM ARTICULOS
);

--13.Nombre del cliente con mayor facturación.
--14.Código y descripción de aquellos artículos con un precio superior a la media y que hayan sido comprados por más de 5 clientes.
SELECT A.CODART, A.DESCRIP
FROM ARTICULOS A
WHERE A.PRECIO > (
    SELECT AVG(PRECIO)
    FROM ARTICULOS
)
AND A.CODART IN (
    SELECT L.CODART
    FROM LINEAS_FAC L
    JOIN FACTURAS F ON L.CODFAC = F.CODFAC
    GROUP BY L.CODART
    HAVING COUNT(DISTINCT F.CODCLI) > 5
);
