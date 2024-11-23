SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId
EXCEPT
SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId;

----------------------------- 
SELECT A.Clave AS ClaveAsesores
FROM Asesores A
EXCEPT
SELECT C.Clave AS ClaveAsesores
FROM Comisiones C;