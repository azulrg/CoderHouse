CREATE DATABASE SPOTIFY;
     
    CREATE TABLE `indice` (
  `Id` int NOT NULL,
  `Nombre_cancion` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `popularidad` (
  `popularidad` int NOT NULL,
  `Id` int NOT NULL,
  `nombre_cancion` varchar(45) NOT NULL,
  PRIMARY KEY (`popularidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `spotify`.`cancion` (
  `Id` INT NOT NULL,
  `nombre_artista` VARCHAR(45) NOT NULL,
  `nombre_cancion` VARCHAR(45) NOT NULL,
  `genero_musical` VARCHAR(45) NOT NULL,
  `año` INT NOT NULL,
  `duracion` INT NOT NULL,
  PRIMARY KEY (`nombre_cancion`));

ALTER TABLE `spotify`.`cancion` 
ADD COLUMN `bpm` INT NOT NULL AFTER `duracion`,
ADD COLUMN `danceability` INT NOT NULL AFTER `bpm`,
ADD COLUMN `energia` INT NOT NULL AFTER `danceability`,
ADD COLUMN `popularidad` INT NOT NULL AFTER `energia`;


CREATE TABLE `spotify`.`artista` (
  `nombre_artista` VARCHAR(45) NOT NULL,
  `Id` INT NOT NULL,
  PRIMARY KEY (`nombre_artista`));


CREATE TABLE `spotify`.`genero` (
  `genero_musical` VARCHAR(45) NOT NULL,
  `Id` INT NOT NULL,
  `nombre_cancion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`genero_musical`));

CREATE TABLE `energia` (
  `energia` int NOT NULL,
  `Id` int NOT NULL,
  PRIMARY KEY (`energia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `duracion` (
  `duracion` int NOT NULL,
  `Id` int NOT NULL,
  PRIMARY KEY (`duracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `danceability` (
  `danceaility` int NOT NULL,
  `Id` int NOT NULL,
  PRIMARY KEY (`danceaility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `bpm` (
  `Bpm` int NOT NULL,
  `Id` int NOT NULL,
  PRIMARY KEY (`Bpm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `año` (
  `año` int NOT NULL,
  `Id` int NOT NULL,
  `nombre_cancion` varchar(45) NOT NULL,
  `nombre_artista` varchar(45) NOT NULL,
  `genero_musical` varchar(45) NOT NULL,
  PRIMARY KEY (`año`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


