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