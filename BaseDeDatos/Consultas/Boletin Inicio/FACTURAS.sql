--BOLETIN INICIO
--1.Código, fecha y doble del descuento de las facturas con iva cero.
 SELECT F.CODFAC , F.FECHA , F.DTO FROM FACTURAS f 
 WHERE F.IVA = 0;

--2.Código de las facturas con iva nulo.
SELECT F.CODFAC  FROM FACTURAS f 
WHERE F.IVA IS NULL;

--3.Código y fecha de las facturas sin iva (iva cero o nulo).
SELECT F.CODFAC , F.FECHA  FROM FACTURAS f 
WHERE F.IVA IS NULL
OR F.IVA = 0;

--4.Código de factura y de artículo de las líneas de factura en las que la cantidad solicitada 
--es menor de 5 unidades y además se ha aplicado un descuento del 25% o mayor.
SELECT lF.CODFAC , LF.CODART  FROM LINEAS_FAC lf 
WHERE LF.CANT < 5 
AND LF.DTO >= 25;
--5.Obtener la descripción de los artículos cuyo stock está por debajo del stock mínimo, 
--dado también la cantidad en unidades necesaria para alcanzar dicho mínimo.
SELECT A.DESCRIP  FROM ARTICULOS a
WHERE A.STOCK < A.STOCK_MIN ;
--6.Ivas distintos aplicados a las facturas.
SELECT DISTINCT F.IVA  FROM FACTURAS f;
--7.Código, descripción y stock mínimo de los artículos de los que se desconoce la cantidad de stock. 
--Cuando se desconoce la cantidad de stock de un artículo, el stock es nulo.
SELECT A.CODART , A. DESCRIP , A. STOCK_MIN  FROM ARTICULOS a 
WHERE A.STOCK IS NULL;
--8.Obtener la descripción de los artículos cuyo stock es más de tres veces su stock mínimo y cuyo precio supera los 6 euros.
SELECT A.DESCRIP  FROM ARTICULOS a 
WHERE A.STOCK > A.STOCK_MIN * 3
AND A.PRECIO > 6;
--9.Código de los artículos (sin que salgan repetidos) comprados en aquellas facturas cuyo código está entre 8 y 10.
SELECT DISTINCT LF.CODART  FROM LINEAS_FAC lf  
WHERE LF.CODFAC BETWEEN 8 AND 10;
--10.Mostrar el nombre y la dirección de todos los clientes.
SELECT C.NOMBRE , C.DIRECCION  FROM CLIENTES c ;

















