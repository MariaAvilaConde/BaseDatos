
Create database dbMarket2023
ON PRIMARY
(NAME= Market2023,
FILENAME = 'c:\VENTAS\Market2023.mdf',
Size=15MB,
maxsize=50MB,
filegrowth=5MB),

(NAME= Market2023_Data,
FILENAME = 'c:\VENTAS\Market2023.ndf',
Size=30MB,
maxsize=100MB,
filegrowth=25%),

(NAME= Market2023_Log,
FILENAME = 'c:\VENTAS\Market2023.ldf',
Size=60MB,
maxsize=150MB,
filegrowth=20%)

CREATE SCHEMA PERSONA;

CREATE SCHEMA VENTA;

CREATE TABLE PERSONA(
IDPER INT  PRIMARY KEY,
DNIPER CHAR (8),
NOMPER VARCHAR (60),
APEPER VARCHAR (80),
EMAPER VARCHAR (90),
CELPER VARCHAR (10),
TIPPER INT,
ESTPER INT,
FECNACPER DATE,
);

DROP SCHEMA PERSONA;

INSERT INTO PERSONA(IDPER,DNIPER,NOMPER,APEPER,EMAPER,CELPER,TIPPER,ESTPER,FECNACPER)
VALUES 
(200,'77889955','Alberto','Solano Pariona','alberto.pariona@empresa.com',998456321,'V','A',('10/2/1970')),
(201,'45781233','Alicia','Garcia Campo','alicia.garcia@gamil.com',929185236,'V','A',('10/2/1970')),
(202,'15487922','Juana','Avila Chumpitaz','juana.avila@gmail.com',923568741,'V','A',('10/2/1970')),
(203,'22116633','Ana','Enriquez Flores','ana.enriquez@empresa.com',978848551,'V','A',('10/2/1970')),
(204,'88741589','Claudia','Perales Ortiz','claudia.perales@yahoo.com',997845263,'V','A',('10/2/1970')),
(205,'45122587','Mario','Barrios Martinez','maario.barios@outlook.com',986525874,'V','A',('10/2/1970')),
(206,'15258564','Brunela','Tarazona Guerra','brunela.tarazona.com',9865255877,'V','A',('10/2/1970'));


SELECT * FROM PERSONA;


CREATE SCHEMA PRODUCTO;

CREATE TABLE PRODUCTO(
CODPROD INT PRIMARY KEY,
NOMPRO VARCHAR (60),
PREPO VARCHAR (80),
STOCKPRO VARCHAR (90),
IDCATPRO VARCHAR (10),
ESTPRO CHAR (1),
);

INSERT INTO PRODUCTO(CODPROD, NOMPRO,PREPO,STOCKPRO,IDCATPRO,ESTPRO)
VALUES
('P01', 'Arroz'),
('P02', 'Azucar'),
('P03', 'Pollo fresco'),
('P04', 'Lomo fino'),
('P05', 'Detergente'),
('P06', 'Suavizante');
CREATE TABLE CATEGORIA(
IDCAT INT PRIMARY KEY,
NOMCAT VARCHAR (60),
);

INSERT INTO CATEGORIA (IDCAT, NOMCAT)
VALUES
(10, 'Abarrotes'),
(20, 'Carnes y Pollo'),
(30, 'Higiene y Limpieza');

select * from CATEGORIA;