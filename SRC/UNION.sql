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