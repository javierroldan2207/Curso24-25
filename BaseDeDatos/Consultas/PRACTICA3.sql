/*6.Importe total de los artículos que tenemos en el almacén. 
--Este importe se calcula sumando el producto de las unidades en stock por el precio de cada unidad*/
SELECT SUM(A.PRECIO*A.STOCK) Precio_Total
FROM ARTICULOS a ;

--7.Número de pueblos en los que residen clientes cuyo código postal empieza por ‘12’.
SELECT COUNT(DISTINCT C.CODPUE )
FROM CLIENTES c 
JOIN PUEBLOS p ON C.CODPUE =P.CODPUE
WHERE C.CODPUE LIKE '12%';

--8.Valores máximo y mínimo del stock de los artículos cuyo precio oscila entre 9 y 12 € y diferencia entre ambos valores
SELECT  MAX(A.STOCK) Maximo, MIN(A.STOCK) Minimo, MAX(A.STOCK)-MIN(A.STOCK) Diferencia
FROM ARTICULOS a 
WHERE A.PRECIO BETWEEN 9 AND 12;

--9.Precio medio de los artículos cuyo stock supera las 10 unidades.
SELECT AVG(A.PRECIO)
FROM ARTICULOS a 
WHERE A.STOCK > 10;

--10.Fecha de la primera y la última factura del cliente con código 210.
SELECT MAX(F.FECHA) Max_fecha, MIN(F.FECHA) Min_fecha
FROM FACTURAS f 
WHERE F.CODCLI = '210';

--11.Número de artículos cuyo stock es nulo.
SELECT COUNT(*) Numero_articulos
FROM ARTICULOS a 
WHERE A.STOCK IS NULL;

--12.Número de líneas cuyo descuento es nulo (con un decimal).
SELECT ROUND(COUNT(*), 1) Descuentos_nulos
FROM LINEAS_FAC lf 
WHERE LF.DTO IS NULL;

--13.Obtener cuántas facturas tiene cada cliente.
SELECT COUNT(*)  NUMERO_FACTURAS  
FROM FACTURAS  
GROUP BY CODCLI;

--14.Obtener cuántas facturas tiene cada cliente, pero sólo si tiene dos o más  facturas.
SELECT COUNT(*)  NUMERO_FACTURAS  
FROM FACTURAS  
GROUP BY CODCLI  
HAVING COUNT(*) >= 2;

--15.Importe de la facturación (suma del producto de la cantidad por el precio de las líneas de factura) de los  artículos
SELECT SUM(L.CANT * L.PRECIO)  IMPORTE_FACTURACION  
FROM LINEAS_FAC L;

/*16.Importe de la facturación (suma del producto de la cantidad por el precio de las líneas de factura) 
de aquellos artículos cuyo código contiene la letra “A” (bien mayúscula o minúscula).*/
SELECT SUM(LF.CANT*LF.PRECIO)
FROM LINEAS_FAC lf 
WHERE UPPER(LF.CODART) LIKE '%A%';

--17.Número de facturas para cada fecha, junto con la fecha.
SELECT FECHA, COUNT(*)  NUMERO_FACTURAS  
FROM FACTURAS  
GROUP BY FECHA;
 
/*18.Obtener el número de clientes del pueblo junto con el nombre del pueblo 
mostrando primero los pueblos que más clientes tengan.*/
SELECT P.NOMBRE, COUNT(C.CODCLI) AS NUMERO_CLIENTES  
FROM PUEBLOS P  
JOIN CLIENTES C ON P.CODPUE = C.CODPUE  
GROUP BY P.NOMBRE  
ORDER BY NUMERO_CLIENTES DESC;

/*19.Obtener el número de clientes del pueblo junto con el nombre del pueblo mostrando primero los 
 pueblos que más clientes tengan, siempre y cuando tengan más de dos clientes.*/
SELECT P.NOMBRE, COUNT(C.CODCLI) AS NUMERO_CLIENTES  
FROM PUEBLOS P  
JOIN CLIENTES C ON P.CODPUE = C.CODPUE  
GROUP BY P.NOMBRE  
HAVING COUNT(C.CODCLI) > 2  
ORDER BY NUMERO_CLIENTES DESC;

/*20.Cantidades totales vendidas para cada artículo cuyo código empieza por “P", 
mostrando también la descripción de dicho artículo.*/
SELECT A.DESCRIP , SUM(LF.CANT) CANTIDAD_VENDIDA
FROM ARTICULOS a 
JOIN LINEAS_FAC lf ON LF.CODART = A.CODART 
WHERE UPPER(A.CODART) LIKE 'P%'
GROUP BY A.DESCRIP;

--21.Igual que el anterior pero mostrando también la diferencia entre el precio máximo y mínimo.
SELECT A.DESCRIP , SUM(LF.CANT) CANTIDAD_VENDIDA , MAX(LF.PRECIO) - MIN(LF.PRECIO) DIFERENCIA_PRECIO
FROM ARTICULOS a 
JOIN LINEAS_FAC lf ON LF.CODART = A.CODART 
WHERE A.CODART LIKE 'P%'
GROUP BY A.DESCRIP;

--22.Nombre de aquellos artículos de los que se ha facturado más de 10000 euros.
SELECT A.DESCRIP  
FROM ARTICULOS A  
JOIN LINEAS_FAC L ON A.CODART = L.CODART  
GROUP BY A.DESCRIP  
HAVING SUM(L.CANT * L.PRECIO) > 10000;

/*23.Número de facturas de cada uno de los clientes cuyo código está entre 150 y 300 
(se debe mostrar este código), con cada IVA distinto que se les ha aplicado.*/
SELECT DISTINCT F.CODCLI, F.IVA, COUNT(*)  NUMERO_FACTURAS  
FROM FACTURAS F  
WHERE F.CODCLI BETWEEN 150 AND 300  
GROUP BY F.CODCLI, F.IVA;

--24.Media del importe de las facturas, sin tener en cuenta impuestos ni descuentos.
SELECT AVG(SUM(L.CANT * L.PRECIO))  MEDIA_IMPORTE_FACTURAS  
FROM LINEAS_FAC L
GROUP BY L.CODFAC;



































