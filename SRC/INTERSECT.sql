SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId

INTERSECT

SELECT A.Nombre AS AsesoresNombre
FROM Asesores A
INNER JOIN Comisiones C 
ON A.AsesorId = C.AsesorId;

-----------------------------------------
SELECT A.Clave AS ClaveAsesores
FROM Asesores A
INTERSECT
SELECT C.Clave AS ClaveAsesores
FROM Comisiones C;