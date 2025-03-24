/*1. Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).*/

SELECT *
FROM producto p  
WHERE p.id_fabricante = (
	SELECT f.ID FROM fabricante f WHERE f.nombre = 'Lenovo');


/*2. Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fa-
bricante Lenovo. (Sin utilizar INNER JOIN).*/

SELECT *
FROM producto p 
WHERE p.precio = (
	SELECT  MAX(p2.precio)
	FROM producto p2 , fabricante f
	WHERE p2.id_fabricante = f.id 
	and f.nombre = 'Lenovo');


/*3. Lista el nombre del producto más caro del fabricante Lenovo*/

select p.nombre
from producto p 
where p.precio = (
	select max(p2.precio)
	from producto p2 , fabricante f 
	where p2.id_fabricante = f.id 
	and f.nombre = 'Lenovo');

/*4. Lista el nombre del producto más barato del fabricante Hewlett-Packard*/

SELECT nombre 
FROM producto 
WHERE precio = (
    SELECT MIN(precio) 
    FROM producto 
    WHERE id_fabricante = (
        SELECT id FROM fabricante WHERE nombre = 'Hewlett-Packard'
    )
);


/*5. Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más
caro del fabricante Lenovo.*/

select  *
from producto p 
where p.precio >= (
	select max(p1.precio)
	from producto p1
	where p1.id_fabricante = (
	select f.id from fabricante f where f.nombre = 'Lenovo' ));


/*6. Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus
productos.*/

select  *
from producto p 
where p.precio > (
	select avg(p2.precio)
	from producto p2 
	where p2.id_fabricante = (
	select f.id
	from fabricante f
	where f.nombre = 'Asus'));

/* 8. Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni
LIMIT.*/

select * 
from producto p 
where p.precio >= all (
	select  p2.precio
	from producto p2 );


/*9. Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni
LIMIT.*/

select *
from producto p 
where p.precio <= all (
	select p2.precio
	from producto p2 );

/*10. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).*/

select  f.nombre
from fabricante f 
where f.id = any (
	select p.id_fabricante
	from producto p );


/*11. Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando ALL o ANY).*/

select f.nombre
from fabricante f 
where f.id != all (
	select p.id_fabricante
	from producto p );

/*12. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o NOT IN).*/

select  f.nombre
from fabricante f
where f.id in (
	select p.id_fabricante
	from producto p );


/*13. Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando IN o NOT IN).*/

select f.nombre
from fabricante f 
where f.id not in (
	select p.id_fabricante
	from producto p );


/*14. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando EXISTS o NOT
EXISTS).*/

select  f.nombre 
from fabricante f
where exists (
	select 1
	from producto p
	where p.id_fabricante  = f.id );


/*15. Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando EXISTS o NOT
EXISTS).*/

select f.nombre
from fabricante f 
where not exists (
	select 1 
	from producto p 
	where p.id_fabricante = f.id );










