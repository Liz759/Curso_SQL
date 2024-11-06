--- CREAR TABLAS----
CREATE TABLE Asesores (
    AsesorId INT PRIMARY KEY IDENTITY(1,1),
    Clave NVARCHAR (100) NOT NULL,
    Nombre NVARCHAR (100) NOT NULL,
    Regional NVARCHAR (100) NOT NULL,
    Director NVARCHAR (100) NOT NULL,
    Tip_Doc_Director NVARCHAR (100) NOT NULL,
    Num_Doc_Director INT
);
   CREATE TABLE Directores (
   DirectorId INT PRIMARY KEY IDENTITY(1,1),
   Director NVARCHAR (100) NOT NULL, 
   Tip_Doc_Director NVARCHAR (100) NOT NULL,
   Num_Doc_Director INT,
   Regional NVARCHAR (100) NOT NULL,
   );

   CREATE TABLE Comisiones (
    ComisionId INT,
    AsesorId INT,
    Clave NVARCHAR (100) NOT NULL,
    Mes_Proceso DATE NOT NULL,
    Valor_Proceso INT,
    Director NVARCHAR (100) NOT NULL,
    Tip_Doc_Director NVARCHAR (100) NOT NULL,
    Num_Doc_Director INT,
    Regional NVARCHAR (100) NOT NULL,
    PRIMARY KEY (ComisionId),
    FOREIGN KEY (AsesorId) REFERENCES Asesores (AsesorId)
);

----INSERTAR DATOS ------

INSERT INTO ASESORES (clave, nombre, regional, director, tip_doc_director, num_doc_director)
VALUES
('A123', 'MARIA', 'ZONAS_ESPECIALES', 'JOSE', 'CC', '1014572677'),
('A145', 'JAVIER', 'SUROCCIDENTE', 'JUAN', 'CC', '1078468756'),
('C185', 'PATRICIA', 'NORTE', 'GABRIEL', 'CC', '1228578792'),
('N158', 'LUIS', 'SURORIENTE', 'MARIA', 'CC', '5879821'),
('C157', 'GLORIA', 'EJECAFETERO', 'CLARA', 'CC', '7628941');

select * from Asesores

INSERT INTO Directores (Director, tip_doc_director, num_doc_director, regional)
VALUES
('JOSE', 'CC', '1014572677', 'ZONAS_ESPECIALES'),
('JUAN', 'CC', '1078468756', 'SUROCCIDENTE'),
('GABRIEL', 'CC', '1228578792', 'NORTE'),
('SOFIA', 'CC', '5879821', 'SURORIENTE'),
('CLARA', 'CC', '7628941', 'EJECAFETERO');

select * from Directores

INSERT INTO Comisiones (ComisionID, asesorid, Clave, Mes_Proceso, Valor_Proceso, Director, Tip_Doc_Director, Num_Doc_Director, Regional)
VALUES
(1, 1, 'A123','2024-10-01',235000,'JOSE', 'CC', '1014572677','ZONAS_ESPECIALES'),
(2, 1,'A145','2024-10-01',680000,'JUAN', 'CC', '1078468756','SUROCCIDENTE'),
(3, 1,'C185','2024-10-01',15000000,'GABRIEL', 'CC', '1228578792','NORTE'),
(4, 1,'N158','2024-10-01',560000,'MARIA', 'CC', '5879821','SURORIENTE'),
(5, 1,'C157','2024-10-01',5300000,'CLARA', 'CC', '7628941','EJECAFETERO');

select * from Comisiones

----CONSULTA #1 ----

select * FROM Asesores
select * from Directores
select * from Comisiones

----CONSULTA #2 ----

SELECT A.Clave
FROM Asesores A; 

select D.Director
from Directores D;

select  C.Regional
from Comisiones C;

----CONSULTA #3 ----

SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId;

SELECT D.Director AS DirectorDirector
FROM Directores D
INNER JOIN Comisiones C 
ON d.Director = C.Director;

----CONSULTA #4 ----

SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId
UNION 
SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId;

--------------------------------------

SELECT A.Clave AS ClaveAsesores
FROM Asesores A
UNION
SELECT C.Clave AS ClaveAsesores
FROM Comisiones C;

-----------------------------------

SELECT A.Clave AS ClaveAsesores
FROM Asesores A
UNION
SELECT C.Director AS NombreDirector
FROM Comisiones C;

---------------------------------

