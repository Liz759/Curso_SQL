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
