CREATE DATABASE SPOTIFY;
 
 
 
 CREATE TABLE IF NOT EXISTS indice(
   id_cancion int NOT NULL AUTO_INCREMENT,
   nombre_cancion varchar(50) NOT NULL,
   PRIMARY KEY (id_cancion)
   );
   
 CREATE TABLE  IF NOT EXISTS artista (
   nombre_artista varchar(50) NOT NULL,
   id_cancion int NOT NULL,
   PRIMARY KEY (nombre_artista),
   FOREIGN KEY (id_cancion) REFERENCES indice (id_cancion)
   );
   
   
  CREATE TABLE IF NOT EXISTS  genero (
     genero_musical varchar(50) NOT NULL,
     id_cancion int NOT NULL,
     nombre_cancion varchar(50) NOT NULL,
     PRIMARY KEY (genero_musical),
     FOREIGN KEY (id_cancion) REFERENCES indice (id_cancion)
     );
    
  CREATE TABLE IF NOT EXISTS  popularidad (
    popularidad int NOT NULL,
    id_cancion int NOT NULL,
    nombre_cancion varchar(50) NOT NULL,
    PRIMARY KEY (popularidad),
    FOREIGN KEY (id_cancion) REFERENCES indice (id_cancion)
    );
    
  CREATE TABLE IF NOT EXISTS duracion(
     duracion int NOT NULL,
     id_cancion int NOT NULL,
     PRIMARY KEY (duracion),
     FOREIGN KEY (id_cancion) REFERENCES indice (id_cancion)
     );
     
  CREATE TABLE IF NOT EXISTS year(
    year int NOT NULL,
    id_cancion int NOT NULL,
    nombre_cancion varchar(50) NOT NULL,
    nombre_artista varchar(50) NOT NULL,
    genero_musical varchar(50) NOT NULL,
    PRIMARY KEY (year),
    FOREIGN KEY (nombre_artista) REFERENCES artista (nombre_artista),
    FOREIGN KEY (genero_musical) REFERENCES genero (genero_musical)
    );
    
     CREATE TABLE  IF NOT EXISTS  cancion (
    nombre_cancion varchar(50) NOT NULL,
    id_cancion int NOT NULL,
    genero_musical varchar(50) NOT NULL,
    duracion int NOT NULL,
    nombre_artista varchar(50) NOT NULL,
    year int NOT NULL,
    PRIMARY KEY (nombre_cancion),
    FOREIGN KEY (id_cancion) REFERENCES indice (id_cancion),
    FOREIGN KEY (genero_musical) REFERENCES genero (genero_musical),
    FOREIGN KEY (duracion) REFERENCES duracion (duracion),
    FOREIGN KEY (nombre_artista) REFERENCES artista (nombre_artista)
    );
