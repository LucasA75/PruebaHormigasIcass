/*
Consultas a la base de datos
*/

-- Consulta de hormigas que estuvieron en una ruta y cuales son las feromonas que colocaron en la ruta
Select 
R.nombre as "Nombre ruta",
H.Hormiga_ID as "Numero Hormiga",
H.Estado,
T.Tipo,
F.latitud,
F.longitud,
F.HoraCreacion,
C.Comunicacion as "Mensaje" 
FROM hormigas H
Right Join feromonas F ON H.Hormiga_ID = F.HormigaDueña
Inner join comunicaciones C ON F.Comunicacion_ID = C.Comunicacion_ID
Inner join tipodehormigas T ON T.TipoDeHormiga_ID = H.TipoDeHormiga_ID
right join ruta_feromona On F.Feromona_ID = ruta_feromona.Feromona_ID
Inner join rutas R ON R.Ruta_ID = ruta_feromona.Ruta_ID
order by Hormiga_ID Desc;

-- Consulta de cantidad de feromonas dejada por cada hormiga 
SELECT
Hormiga_ID as "Hormiga ID",
Count(F.HormigaDueña) as "Numero de feromonas" 
FROM hormigas
Inner JOIN feromonas F ON F.HormigaDueña =  hormigas.Hormiga_ID
group by Hormiga_ID;

-- Hormigas Obreras que no han dejado feromonas en ningun lugar
Select 
Hormiga_ID 
FROM hormigas 
Where Estado = "Viva" and TipoDeHormiga_ID = "5" and 
Hormiga_ID NOT IN
(Select 
HormigaDueña
FROM Feromonas);

 





