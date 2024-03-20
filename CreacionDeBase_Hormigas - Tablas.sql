CREATE database HormigasDB;

/*
Creacion de Tablas 
*/

-- Lista con las comunicaciones
CREATE TABLE Comunicaciones(
	Comunicacion_ID int AUTO_INCREMENT Primary KEY,
    Comunicacion varchar(50)
);

-- Lista con las TipoDeHormigas
CREATE TABLE TipoDeHormigas(
	TipoDeHormiga_ID int AUTO_INCREMENT Primary KEY,
    Tipo varchar(30)
);

-- Lista con las Colonias
CREATE TABLE Colonias(
	Colonia_ID int AUTO_INCREMENT Primary KEY,
    Nombre varchar(30)
);

-- Rutas que tendran las hormigas
CREATE TABLE Rutas(
	Ruta_ID int AUTO_INCREMENT Primary Key,
    nombre varchar(50)
);

-- Contendra todas las hormigas
CREATE TABLE Hormigas(
	Hormiga_ID int AUTO_INCREMENT Primary Key,
    FechaDeNacimiento Date,
    Estado varchar(50),
    Colonia_ID int,
	TipoDeHormiga_ID int,
	FOREIGN KEY (Colonia_ID) REFERENCES Colonias(Colonia_ID),
	FOREIGN KEY (TipoDeHormiga_ID) REFERENCES TipoDeHormigas(TipoDeHormiga_ID)
);

-- Feromonas liberadas por las hormigas
CREATE TABLE Feromonas(
	Feromona_ID int  AUTO_INCREMENT Primary KEY,
    latitud DECIMAL(10, 8),
    longitud DECIMAL(11, 8),
    Comunicacion_ID int,
	FOREIGN KEY (Comunicacion_ID) REFERENCES Comunicaciones(Comunicacion_ID)
);

-- Todas las feromonas que se encuentran en una ruta
CREATE TABLE Ruta_Feromona(
	Ruta_Feromona_ID int AUTO_INCREMENT Primary KEY,
    Ruta_ID int,
    Feromona_ID int,
	FOREIGN KEY (Ruta_ID) REFERENCES Rutas(Ruta_ID),
	FOREIGN KEY (Feromona_ID) REFERENCES Feromonas(Feromona_ID)
);





