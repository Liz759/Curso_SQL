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