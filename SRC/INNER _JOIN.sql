SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId;

SELECT D.Director AS DirectorDirector
FROM Directores D
INNER JOIN Comisiones C 
ON d.Director = C.Director;