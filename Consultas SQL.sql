/*
Consultas a la base de datos
*/

Select * FROM Hormigas;
Select * FROM Rutas;
Select * FROM ruta_feromona;
Select * FROM feromonas;

-- Consulta de hormigas que estan en una ruta y cuales son las feromonas que colocaron en la ruta
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
order by Hormiga_ID Desc



