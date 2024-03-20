/*
Creacion de inyeccion de datos a las tablas 
*/

select * FROM COLONIAS;

-- Agregar colonias
INSERT INTO colonias(Nombre) 
Values("Primera Colonia");

-- Agregar Comunicaciones
INSERT INTO comunicaciones(Comunicacion) Values
("Amenaza"),
("Defender hormiguero"),
("Comida hallada"),
("Iniciar exploracion"),
("Hormiga muerta"),
("Hora de vuelo nupcial");

-- Agregar Tipo de Hormiga
INSERT INTO tipodehormigas(Tipo) Values
("Reina"),
("Princesa"),
("Principe"),
("Nodriza"),
("Obrera"),
("Soldado"),
("Sepulturera");

-- Agregar Rutas
INSERT INTO rutas(nombre) Values
("Patio de Comidas"),
("Nueva ruta"),
("Patio del vecino");


SELECT * FROM hormigas;
SELECT * FROM comunicaciones;
SELECT * FROM feromonas;


-- Agregar Hormigas
INSERT INTO hormigas(Colonia_ID,Estado,FechaDeNacimiento,TipoDeHormiga_ID) VALUES
(1,"Viva","2024-03-19",1),
(1,"Viva","2024-03-18",2),
(1,"Viva","2024-03-18",3),
(1,"Viva","2024-03-18",4),
(1,"Viva","2024-03-18",5),
(1,"Viva","2024-02-19",5),
(1,"Viva","2024-02-19",5),
(1,"Viva","2024-02-19",5),
(1,"Viva","2024-03-19",6),
(1,"Viva","2024-03-19",6),
(1,"Viva","2024-01-19",6),
(1,"Viva","2024-01-19",7),
(1,"Viva","2024-01-19",5),
(1,"Viva","2024-03-20",5),
(1,"Viva","2024-03-20",5),
(1,"Muerta","2023-12-20",1),
(1,"Exiliada","2023-12-15",6);

-- Agregar Feromonas
INSERT INTO Feromonas(Comunicacion_ID,latitud,longitud,HormigaDueña) VALUES
(4,44.5088,85.2748,6),
(3,42.5088,80.2348,7),
(4,43.5088,81.2248,8),
(5,41.5088,82.2548,8),
(1,44.5018,84.2448,8),
(4,44.7018,74.2448,8);


INSERT INTO Ruta_Feromona(Feromona_ID,Ruta_ID) VALUES
(1,1),
(2,1),
(3,1),
(4,1);


-- Agregar Comida
INSERT INTO Comida(Cantidad,Colonia_ID) VALUES
(30,1);



-- Agregar Huevos
INSERT INTO Huevos(Cantidad,Colonia_ID) VALUES
(10,1);




