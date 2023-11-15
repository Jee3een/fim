CREATE TABLE piloto(
    ID INT PRIMARY KEY,
    nombre VARCHAR (30),
    apellido VARCHAR (30)
);

CREATE TABLE equipo(
    ID INT PRIMARY KEY,
    nombre_equipo VARCHAR (30),
    nom_completo_jefe VARCHAR (100)
);

CREATE TABLE pais (
    ID INT PRIMARY KEY,
    pais VARCHAR (80)
);

CREATE TABLE GP(
    ID INT PRIMARY KEY,
    año NUMERIC
);

CREATE TABLE circuito (
    ID INT PRIMARY KEY 
    nombre_circuito VARCHAR (100)
    longitud_metros NUMERIC
);

CREATE TABLE resultados(
    ID INT PRIMARY KEY,
    resulados VARCHAR,
    incidentes VARCHAR
);

CREATE TABLE marca(
    ID INT PRIMARY KEY,
    nombre_marca VARCHAR (50)
);

CREATE TABLE clasificacion(
    ID INT PRIMARY KEY,
    clasificacion VARCHAR 
);

--RELACIONES
CREATE TABLE piloto_equipo (
    ID_piloto INT REFERENCES piloto(ID),
    ID_equipo INT REFERENCES equipo(ID),
    año NUMERIC,
    dorsal NUMERIC,
    PRIMARY KEY (ID_piloto, ID_equipo)
);

CREATE TABLE piloto_pais (
    ID_piloto INT REFERENCES piloto(ID),
    ID_pais INT REFERENCES pais(ID),
    PRIMARY KEY (ID_piloto, ID_pais)
);
CREATE TABLE piloto_gp_resultados(
    ID_piloto INT REFERENCES piloto(ID),
    ID_gp INT REFERENCES gp(ID),
    ID_resultados INT REFERENCES resultados(ID),
    año NUMERIC,
    PRIMARY KEY(ID_piloto, ID_gp, ID_resultados)
    
);
CREATE TABLE gp_circuito(
    ID_gp INT REFERENCES gp(ID),
    ID_circuito INT REFERENCES circuito(ID),
    PRIMARY KEY(ID_gp, ID_circuito)
);
CREATE TABLE circuito_pais(
    ID_circuito INT REFERENCES circuito(ID),
    ID_pais INT REFERENCES pais(ID),
    PRIMARY KEY(ID_circuito, ID_pais)
);
CREATE TABLE equipo_class(
    ID_equipo INT REFERENCES equipo(ID),
    ID_clasifi INT REFERENCES clasificacion(ID),
    PRIMARY KEY(ID_equipo, ID_clasifi)
);
CREATE TABLE equipo_marca(
    ID_equipo INT REFERENCES equipo(ID),
    ID_marca INT REFERENCES marca(ID),
    PRIMARY KEY(ID_equipo, ID_marca)
);

CREATE TABLE piloto_circuito(
    ID_piloto INT REFERENCES piloto(ID),
    ID_circuito INT REFERENCES circuito(ID),
    fecha DATE,
    tiempo_vuelta VARCHAR, --00:00
    PRIMARY KEY(ID_piloto, ID_circuito)
);
CREATE TABLE equipo_pais(
    ID_equipo INT REFERENCES equipo(ID),
    ID_pais INT REFERENCES pais(ID),
    PRIMARY KEY(ID_equipo, ID_pais)
);



