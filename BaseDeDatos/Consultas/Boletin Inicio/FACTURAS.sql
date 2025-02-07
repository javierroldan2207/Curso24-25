--BOLETIN INICIO
--1.Código, fecha y doble del descuento de las facturas con iva cero.
 SELECT F.CODFAC , F.FECHA , F.DTO * 2 FROM FACTURAS f 
 WHERE F.IVA = 0;

--2.Código de las facturas con iva nulo.
SELECT F.CODFAC  FROM FACTURAS f 
WHERE F.IVA IS NULL;

--3.Código y fecha de las facturas sin iva (iva cero o nulo).
SELECT F.CODFAC , F.FECHA  FROM FACTURAS f 
WHERE F.IVA IS NULL
OR F.IVA = 0;

SELECT F.CODFAC , F.FECHA  FROM FACTURAS f 
WHERE NVL(F.IVA,0)=0;

--4.Código de factura y de artículo de las líneas de factura en las que la cantidad solicitada 
--es menor de 5 unidades y además se ha aplicado un descuento del 25% o mayor.
SELECT lF.CODFAC , LF.CODART  FROM LINEAS_FAC lf 
WHERE LF.CANT < 5 
AND LF.DTO >= 25;

--5.Obtener la descripción de los artículos cuyo stock está por debajo del stock mínimo, 
--dado también la cantidad en unidades necesaria para alcanzar dicho mínimo.
SELECT A.DESCRIP ,A.STOCK_MIN - A.STOCK   FROM ARTICULOS a 
WHERE A.STOCK_MIN > A.STOCK ;

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

     
--11. Mostrar los distintos códigos de pueblos en donde tenemos clientes.
SELECT DISTINCT P.CODPUE CodigoPueblos 
FROM PUEBLOS p ,CLIENTES c  
WHERE C.NOMBRE IS NOT NULL;

--12. Obtener los códigos de los pueblos en donde hay clientes con código de cliente menor que el código 25. No deben salir códigos repetidos.
SELECT DISTINCT P.CODPUE CodigoPueblo 
FROM PUEBLOS p , CLIENTES c 
WHERE C.CODCLI < 25;

--13. Nombre de las provincias cuya segunda letra es una 'O' (bien mayúscula o minúscula).
SELECT P.NOMBRE  
FROM PROVINCIAS p  
WHERE UPPER(SUBSTR(NOMBRE, 2, 1)) = 'O';


--14. Código y fecha de las facturas del año pasado para aquellos clientes cuyo código se encuentra entre 50 y 100.
SELECT F.CODFAC , F.FECHA  FROM FACTURAS f ,CLIENTES c 
WHERE EXTRACT(YEAR FROM F.FECHA) = EXTRACT(YEAR FROM SYSDATE)-1
AND C.CODCLI  BETWEEN 50 AND 100;

--15. Nombre y dirección de aquellos clientes cuyo código postal empieza por “12”. 
SELECT C.NOMBRE , C.DIRECCION FROM CLIENTES c
WHERE C.CODPOSTAL LIKE '12%';

--16. Mostrar las distintas fechas, sin que salgan repetidas, de las factura existentes de clientes cuyos códigos son menores que 50.
SELECT DISTINCT F.FECHA  FROM FACTURAS f , CLIENTES c 
WHERE C.CODCLI < 50;

--17. Código y fecha de las facturas que se han realizado durante el mes de junio del año 2004
SELECT F.CODFAC , F.FECHA  FROM FACTURAS f 
WHERE EXTRACT(MONTH FROM F.FECHA) = 06
AND EXTRACT(YEAR FROM F.FECHA) = 2004;

--18. Código y fecha de las facturas que se han realizado durante el mes de junio del año 2004 para aquellos clientes cuyo código se encuentra entre 100 y 250.
SELECT F.CODFAC , F.FECHA  FROM FACTURAS f ,CLIENTES c 
WHERE EXTRACT(YEAR FROM F.FECHA) = 2004
AND EXTRACT(MONTH FROM F.FECHA) = 06
AND C.CODCLI  BETWEEN 100 AND 250;

--19. Código y fecha de las facturas para los clientes cuyos códigos están entre 90 y 100 y no tienen iva. NOTA: una factura no tiene iva cuando éste es cero o nulo.
SELECT F.CODFAC , F.FECHA FROM FACTURAS f  
WHERE F.CODCLI BETWEEN 90 AND 100
AND NVL(F.IVA,0)=0;

--20. Nombre de las provincias que terminan con la letra 's' (bien mayúscula o minúscula).
SELECT P.NOMBRE Provincias FROM PROVINCIAS p 
WHERE  UPPER(P.NOMBRE) LIKE '%S';

--21. Nombre de los clientes cuyo código postal empieza por “02”, “11” ó “21”.
SELECT C.NOMBRE FROM CLIENTES c 
WHERE C.CODPOSTAL LIKE '02%' OR C.CODPOSTAL LIKE '11%' OR C.CODPOSTAL LIKE '21%';

--22.Artículos (todas las columnas) cuyo stock sea mayor que el stock mínimo  y no haya en stock más de 5 unidades del stock_min.
SELECT * FROM ARTICULOS a 
WHERE A.STOCK_MIN < A.STOCK 
AND NOT (A.STOCK - A.STOCK_MIN ) > 5;

--23.Nombre de las provincias que contienen el texto “MA” (bien mayúsculas o minúsculas).
SELECT P.NOMBRE  FROM PROVINCIAS p
WHERE UPPER(P.NOMBRE) LIKE '%MA%';

--24.Se desea promocionar los artículos de los que se posee un stock grande. 
--Si el artículo es de más de 6000 € y el stock supera los 60000 €, se hará un descuento del 10%. 
--Mostrar un listado de los artículos que van a entrar en la promoción, con su código de artículo, 
--nombre del articulo, precio actual y su precio en la promoción.
SELECT A.DESCRIP Articulo, A.PRECIO PrecioActual, a.PRECIO * 0.90 PrecioPromocion 
FROM ARTICULOS a  
WHERE A.PRECIO > 6000
AND A.STOCK * A.PRECIO > 60000;


/*EJEMPLO:
SELECT c.NOMBRE nombrecliente,p.NOMBRE nombrepueblo , pro.NOMBRE  nombreprovincia 
FROM clientes c, pueblos p, provincias pro
WHERE c.CODPUE = p.CODPUE 
AND p.CODPRO =pro.CODPRO ;
 */

/*INNER JOIN
SELECT c.NOMBRE nombrecliente,p.NOMBRE nombrepueblo, pro.NOMBRE nombreprovincia
FROM clientes c INNER JOIN pueblos p
ON c.CODPUE = p.CODPUE 
JOIN provincias pro 
ON p.CODPRO =pro.CODPRO ;
 */














