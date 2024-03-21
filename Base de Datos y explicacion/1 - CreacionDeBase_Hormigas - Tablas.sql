CREATE database HormigasDB;
/*
Creacion de Tablas 
*/
USE HormigasDB;
-- Tabla con las comunicaciones
CREATE TABLE Comunicaciones(
	Comunicacion_ID int NOT NULL AUTO_INCREMENT Primary KEY,
    Comunicacion varchar(50) NOT NULL
);

-- Tabla con las TipoDeHormigas
CREATE TABLE TipoDeHormigas(
	TipoDeHormiga_ID int AUTO_INCREMENT Primary KEY,
    Tipo varchar(30) NOT NULL
);

-- Tabla con las Colonias
CREATE TABLE Colonias(
	Colonia_ID int NOT NULL AUTO_INCREMENT Primary KEY,
    Nombre varchar(30) NOT NULL
);


-- Tabla de comida de la colonia
CREATE TABLE Comida(
	Comida_ID int NOT NULL AUTO_INCREMENT Primary KEY,
    Cantidad int NOT NULL,
    Colonia_ID int NOT NULL,
	FOREIGN KEY (Colonia_ID) REFERENCES Colonias(Colonia_ID)
);

-- Tabla de huevos de la colonia
CREATE TABLE Huevos(
	Huevo_ID int AUTO_INCREMENT Primary KEY,
    Cantidad int NOT NULL,
	Colonia_ID int NOT NULL,
	FOREIGN KEY (Colonia_ID) REFERENCES Colonias(Colonia_ID)
);



-- Rutas que tendran las hormigas
CREATE TABLE Rutas(
	Ruta_ID int AUTO_INCREMENT Primary Key,
    nombre varchar(50) NOT NULL
);

-- Contendra todas las hormigas
CREATE TABLE Hormigas(
	Hormiga_ID int AUTO_INCREMENT Primary Key,
    FechaDeNacimiento Date NOT NULL,
    Estado varchar(50) NOT NULL,
    Colonia_ID int NOT NULL,
	TipoDeHormiga_ID int NOT NULL,
	FOREIGN KEY (Colonia_ID) REFERENCES Colonias(Colonia_ID),
	FOREIGN KEY (TipoDeHormiga_ID) REFERENCES TipoDeHormigas(TipoDeHormiga_ID)
);

-- Feromonas liberadas por las hormigas
CREATE TABLE Feromonas(
	Feromona_ID int  AUTO_INCREMENT Primary KEY,
    latitud DECIMAL(10, 8) NOT NULL,
    longitud DECIMAL(11, 8) NOT NULL,
    Comunicacion_ID int NOT NULL,
    HoraCreacion datetime DEFAULT CURRENT_TIMESTAMP,
    HormigaDueña int NOT NULL,
    HoraCambio datetime DEFAULT NULL,
	FOREIGN KEY (Comunicacion_ID) REFERENCES Comunicaciones(Comunicacion_ID),
	FOREIGN KEY (HormigaDueña) REFERENCES Hormigas(Hormiga_ID)
);

-- Todas las feromonas que se encuentran en una ruta
CREATE TABLE Ruta_Feromona(
	Ruta_Feromona_ID int NOT NULL AUTO_INCREMENT Primary KEY,
    Ruta_ID int NOT NULL,
    Feromona_ID int NOT NULL,
	FOREIGN KEY (Ruta_ID) REFERENCES Rutas(Ruta_ID),
	FOREIGN KEY (Feromona_ID) REFERENCES Feromonas(Feromona_ID)
);





