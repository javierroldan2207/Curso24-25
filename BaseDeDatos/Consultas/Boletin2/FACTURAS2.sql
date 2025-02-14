--BOLETIN 2

--1.Mostrar el nombre de los clientes junto al nombre de su pueblo.
SELECT C.NOMBRE , P.NOMBRE  
FROM CLIENTES c , PUEBLOS p
WHERE C.CODPUE = P.CODPUE ;

SELECT C.NOMBRE , P.NOMBRE  
FROM CLIENTES c 
INNER JOIN PUEBLOS p 
ON C.CODPUE = P.CODPUE ;

--2.Mostrar el nombre de los pueblos junto con el nombre de la provincia correspondiente.
SELECT P.NOMBRE Pueblo, PRO.NOMBRE Provincia 
FROM PUEBLOS p , PROVINCIAS pro
WHERE P.CODPRO = PRO.CODPRO ;

SELECT P.NOMBRE, PRO.NOMBRE  
FROM PUEBLOS p 
INNER JOIN PROVINCIAS pro
ON PRO.CODPRO = P.CODPRO ;

--3.Mostrar el nombre de los clientes junto al nombre de su pueblo y el de su provincia.
SELECT C.NOMBRE Cliente, P.NOMBRE Pueblo, PRO.NOMBRE Provincia FROM CLIENTES c , PUEBLOS p , PROVINCIAS pro
WHERE C.CODPUE = P.CODPUE 
AND P.CODPRO = PRO.CODPRO ;

SELECT C.NOMBRE Cliente, P.NOMBRE Pueblo, PRO.NOMBRE Provincia 
FROM CLIENTES c 
INNER JOIN PUEBLOS p 
ON C.CODPUE = P.CODPUE 
JOIN PROVINCIAS pro 
ON P.CODPRO = PRO.CODPRO ;

--4.Nombre de las provincias donde residen clientes sin que salgan valores repetidos.
SELECT DISTINCT PRO.NOMBRE Provincia  
FROM PROVINCIAS pro , CLIENTES c , PUEBLOS p 
WHERE PRO.CODPRO = P.CODPRO 
AND P.CODPUE = C.CODPUE ;

SELECT DISTINCT PRO.NOMBRE Provincia 
FROM PROVINCIAS pro 
INNER JOIN PUEBLOS p 
ON PRO.CODPRO = P.CODPRO 
INNER JOIN CLIENTES c 
ON P.CODPUE = C.CODPUE ;

--5.Mostrar la descripción de los artículos que se han vendido en una cantidad superior a 10 unidades. 
--Si un artículo se ha vendido más de una vez en una cantidad superior a 10 sólo debe salir una vez.
SELECT DISTINCT A.DESCRIP Articulo 
FROM ARTICULOS a, LINEAS_FAC lf 
WHERE A.CODART = LF.CODART 
AND LF.CANT > 10;

SELECT DISTINCT A.DESCRIP Articulo 
FROM ARTICULOS a 
INNER JOIN LINEAS_FAC lf 
ON A.CODART = LF.CODART 
AND LF.CANT > 10;

--6.Mostrar la fecha de factura junto con el código del artículo y la cantidad vendida por cada artículo vendido en alguna factura. 
--Los datos deben salir ordenado por fecha, primero las más reciente, luego por el código del artículos, 
--y si el mismo artículo se ha vendido varias veces en la misma fecha los más vendidos primero.
SELECT F.FECHA,LF.CODART, LF.CANT , C.NOMBRE 
FROM FACTURAS f ,LINEAS_FAC lf , CLIENTES c 
WHERE F.CODFAC = LF.CODFAC
AND F.CODCLI = C.CODCLI 
ORDER BY F.FECHA DESC, LF.CODART ASC, LF.CANT DESC;

SELECT F.FECHA , LF.CODART , LF.CANT ,C.NOMBRE 
FROM FACTURAS f 
INNER JOIN LINEAS_FAC lf 
ON F.CODFAC = LF.CODFAC 
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI 
ORDER BY F.FECHA DESC, LF.CODART ASC, LF.CANT DESC;

--7.Mostrar el código de factura y la fecha de las mismas de las facturas que se han facturado a un cliente 
--que tenga en su código postal un 7.
SELECT DISTINCT F.CODFAC ,F.FECHA 
FROM FACTURAS f , CLIENTES c 
WHERE F.CODCLI = C.CODCLI 
AND C.CODPOSTAL LIKE '%7%'
OR C.CODPOSTAL LIKE '%7'
OR C.CODPOSTAL LIKE '7%';

SELECT DISTINCT F.CODFAC , F.FECHA 
FROM FACTURAS f 
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI 
WHERE C.CODPOSTAL LIKE '%7%'
OR C.CODPOSTAL LIKE '%7'
OR C.CODPOSTAL LIKE '7%';
--8.Mostrar el código de factura, la fecha y el nombre del cliente de todas las facturas existentes en la base de datos.
SELECT F.CODFAC ,F.FECHA , C.NOMBRE Cliente
FROM FACTURAS f , CLIENTES c 
WHERE F.CODCLI = C.CODCLI;

SELECT F.CODFAC , F.FECHA, C.NOMBRE Cliente  
FROM FACTURAS f 
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI;

--9.Mostrar un listado con el código de la factura, la fecha, el iva, el dto y el nombre del cliente 
--para aquellas facturas que o bien no se le ha cobrado iva (no se ha cobrado iva si el iva es nulo o cero), 
--o bien el descuento es nulo.
SELECT F.CODFAC , F.FECHA , F.IVA , F.DTO Descuento , C.NOMBRE Cliente
FROM FACTURAS f ,CLIENTES c 
WHERE F.CODCLI = C.CODCLI 
AND (NVL(F.IVA,0) = 0
OR NVL(F.DTO ,0) = 0);

SELECT F.CODFAC , F.FECHA , F.IVA , F.DTO Descuento , C.NOMBRE Cliente
FROM FACTURAS f 
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI 
WHERE NVL(F.IVA,0) = 0
OR NVL(F.DTO ,0) = 0;
--10.Se quiere saber que artículos se han vendido más baratos que el precio que actualmente tenemos almacenados 
--en la tabla de artículos, para ello se necesita mostrar la descripción de los artículos junto con el precio actual. 
--Además deberá aparecer el precio en que se vendió si este precio es inferior al precio original.
SELECT A.DESCRIP Articulo, A.PRECIO PrecioActual, LF.PRECIO PrecioVendidoS
FROM LINEAS_FAC lf , ARTICULOS a 
WHERE LF.CODART = A.CODART 
AND LF.PRECIO < A.PRECIO ;

--11.Mostrar el código de las facturas, junto a la fecha, iva y descuento. También debe aparecer la descripción de los artículos 
--vendido junto al precio de venta, la cantidad y el descuento de ese artículo, para todos los artículos que se han vendido.
SELECT  F.CODFAC , F.FECHA , F.IVA ,F.DTO , A.DESCRIP Articulo
FROM FACTURAS f , LINEAS_FAC lf , ARTICULOS a 
WHERE F.CODFAC = LF.CODFAC 
AND LF.CODART = A.CODART;

SELECT F.CODFAC , F.FECHA , F.IVA ,F.DTO , A.DESCRIP Articulo
FROM FACTURAS f 
INNER JOIN LINEAS_FAC lf 
ON F.CODFAC = LF.CODFAC 
INNER JOIN ARTICULOS a 
ON LF.CODART = A.CODART;

--12.Igual que el anterior, pero mostrando también el nombre del cliente al que se le ha vendido el artículo.
SELECT  F.CODFAC , F.FECHA , F.IVA ,F.DTO , A.DESCRIP Articulo ,C.NOMBRE Cliente
FROM FACTURAS f , LINEAS_FAC lf , ARTICULOS a , CLIENTES c 
WHERE F.CODFAC = LF.CODFAC 
AND LF.CODART = A.CODART
AND F.CODCLI = C.CODCLI;

SELECT F.CODFAC , F.FECHA , F.IVA ,F.DTO , A.DESCRIP Articulo ,C.NOMBRE Cliente
FROM FACTURAS f 
INNER JOIN LINEAS_FAC lf 
ON F.CODFAC = LF.CODFAC 
INNER JOIN ARTICULOS a 
ON LF.CODART = A.CODART
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI;

--13.Mostrar los nombres de los clientes que viven en una provincia que contenga la letra ma.
SELECT C.NOMBRE Clientes
FROM CLIENTES c ,PUEBLOS p ,PROVINCIAS pr
WHERE C.CODPUE = P.CODPUE 
AND P.CODPRO = PR.CODPRO 
AND UPPER(PR.NOMBRE) LIKE '%MA%';

SELECT C.NOMBRE 
FROM CLIENTES c 
INNER JOIN PUEBLOS p
ON C.CODPUE = P.CODPUE 
INNER JOIN PROVINCIAS pr
ON P.CODPRO = PR.CODPRO 
WHERE LOWER(PR.NOMBRE) LIKE '%ma%';

--14.Mostrar el código del cliente al que se le ha vendido un artículo que tienen un stock menor al stock mínimo.
SELECT C.CODCLI 
FROM CLIENTES c , FACTURAS f ,LINEAS_FAC lf ,ARTICULOS a 
WHERE C.CODCLI = F.CODCLI 
AND F.CODFAC = LF.CODFAC 
AND LF.CODART = A.CODART 
AND A.STOCK < A.STOCK_MIN;

SELECT C.CODCLI 
FROM CLIENTES c 
INNER JOIN FACTURAS f 
ON C.CODCLI = F.CODCLI 
INNER JOIN LINEAS_FAC lf 
ON F.CODFAC = LF.CODFAC 
INNER JOIN ARTICULOS a 
ON LF.CODART = A.CODART 
WHERE A.STOCK  < A.STOCK_MIN;

--15.Mostrar el nombre de todos los artículos que se han vendido alguna vez. (no deben salir valores repetidos).
SELECT DISTINCT A.DESCRIP Articulos
FROM ARTICULOS a , LINEAS_FAC lf 
WHERE A.CODART = LF.CODART ;

SELECT DISTINCT A.DESCRIP Articulo
FROM ARTICULOS a 
INNER JOIN LINEAS_FAC lf 
ON A.CODART = LF.CODART;

--16.Se quiere saber el precio real al que se ha vendido cada vez los artículos. 
--Para ello es necesario mostrar el nombre del artículo, junto con el precio de venta 
--(no el que está almacenado en la tabla de artículos) menos el descuento aplicado en la línea de descuento.
SELECT a.DESCRIP  Articulo , LF.PRECIO - (LF.PRECIO * LF.DTO / 100) AS PrecioReal
FROM ARTICULOS a ,LINEAS_FAC lf 
WHERE A.CODART = LF.CODART ;

--17.Mostrar el nombre de los artículos que se han vendido a clientes que vivan en una provincia cuyo nombre termina  por a.
SELECT A.DESCRIP Articulo
FROM ARTICULOS a , LINEAS_FAC lf ,FACTURAS f ,CLIENTES c ,PUEBLOS p ,PROVINCIAS pr 
WHERE A.CODART =LF.CODART 
AND LF.CODFAC = F.CODFAC 
AND F.CODCLI = C.CODCLI 
AND C.CODPUE = P.CODPUE 
AND P.CODPRO = PR.CODPRO 
AND UPPER(PR.NOMBRE) LIKE '%A';

SELECT A.DESCRIP Articulos
FROM ARTICULOS a 
INNER JOIN LINEAS_FAC lf 
ON A.CODART = LF.CODART 
INNER JOIN FACTURAS f 
ON LF.CODFAC = F.CODFAC 
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI 
INNER JOIN PUEBLOS p 
ON C.CODPUE = P.CODPUE 
INNER JOIN PROVINCIAS pr
ON P.CODPRO = PR.CODPRO 
WHERE LOWER(PR.NOMBRE) LIKE '%a';

--18.Mostrar el nombre de los clientes sin que salgan repetidos a los que se les ha hecho un descuento superior 
--al 10% en alguna de sus facturas.
SELECT DISTINCT C.NOMBRE CLIENTE
FROM CLIENTES c ,FACTURAS f
WHERE C.CODCLI = F.CODCLI 
AND F.DTO > 10;

SELECT DISTINCT C.NOMBRE CLIENTE
FROM CLIENTES c 
INNER JOIN FACTURAS f 
ON C.CODCLI = F.CODCLI 
WHERE F.DTO > 10;

--19.Mostrar el nombre de los clientes sin que salgan repetidos a los que se les ha hecho un descuento superior 
--al 10% en alguna de sus facturas o en alguna de las líneas que componen la factura o en ambas.
SELECT DISTINCT C.NOMBRE CLIENTE
FROM CLIENTES c ,FACTURAS f ,LINEAS_FAC lf 
WHERE C.CODCLI = F.CODCLI 
AND F.CODFAC = LF.CODFAC 
AND (F.DTO > 10
OR LF.DTO  > 10);

SELECT DISTINCT C.NOMBRE CLIENTE
FROM CLIENTES c 
INNER JOIN FACTURAS f 
ON C.CODCLI = F.CODCLI 
INNER JOIN LINEAS_FAC lf 
ON F.CODFAC = LF.CODFAC 
WHERE (8F.DTO > 10
OR LF.DTO > 10);

--20.Mostrar la descripción, la cantidad y el precio de venta de los artículos vendidos al cliente con nombre MARIA MERCEDES
SELECT A.DESCRIP ,A.STOCK ,A.PRECIO 
FROM ARTICULOS a , LINEAS_FAC lf ,FACTURAS f ,CLIENTES c 
WHERE  A.CODART = LF.CODART 
AND LF.CODFAC = F.CODFAC 
AND F.CODCLI = C.CODCLI 
AND UPPER(C.NOMBRE) LIKE 'MARIA MERCEDES';

SELECT A.DESCRIP ,A.STOCK ,A.PRECIO 
FROM ARTICULOS a 
INNER JOIN LINEAS_FAC lf 
ON A.CODART = LF.CODART 
INNER JOIN FACTURAS f 
ON LF.CODFAC = F.CODFAC 
INNER JOIN CLIENTES c 
ON F.CODCLI = C.CODCLI 
WHERE UPPER(C.NOMBRE) LIKE 'MARIA MERCEDES';

















