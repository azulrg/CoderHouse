CREATE DATABASE SPOTIFY;
 
 CREATE TABLE indice (
   id_cancion int,
   nombre_cancion varchar(50)
   );
   
 CREATE TABLE artista (
   nombre_artista varchar(50),
   id_cancion int,
   );
   
 CREATE TABLE cancion (
    nombre_cancion varchar(50),
    id_cancion int,
    genero_musical varchar(50),
    duracion int,
    nombre_artista varchar(50),
    year int
    );
   
  CREATE TABLE genero (
     genero_musical varchar(50),
     id_cancion int,
     nombre_cancion varchar(50)
     );
    
  CREATE TABLE popularidad (
    popularidad int,
    id_cancion int,
    nombre_cancion varchar(50)
    );
    
  CREATE TABLE duracion (
     duracion int,
     id_cancion int,
     );
     
  CREATE TABLE Year (
    Year int,
    id_cancion int,
    nombre_cancion varchar(50),
    nombre_artista varchar(50),
    genero_musical varchar(50)
    );
  
