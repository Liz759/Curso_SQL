SELECT AsesorId, Nombre, Apellido, ComisionTotal
FROM AsesoresComisiones
WHERE FechaAsignacion BETWEEN @FechaInicio AND @FechaFin
AND Regional = 'Norte'
ORDER BY ComisionTotal DESC
CREATE PROCEDURE GetAsesoresComisiones
    @FechaInicio DATE = NULL,
    @FechaFin DATE = NULL,
    @Regional NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT AsesorId, Nombre, Apellido, ComisionTotal
    FROM AsesoresComisiones
    WHERE
        (@FechaInicio IS NULL OR FechaAsignacion >= @FechaInicio)
        AND (@FechaFin IS NULL OR FechaAsignacion <= @FechaFin)
        AND (@Regional IS NULL OR Regional = @Regional)
    ORDER BY ComisionTotal DESC;
END

---------------------------------------------------

SELECT AsesorId, Clave,  Director, Valor_Proceso
FROM AsesoresComisiones
WHERE FechaAsignacion BETWEEN @FechaValidacion AND @FechaPago
AND Regional = 'suroccidente'
ORDER BY Valor_Proceso DESC
CREATE PROCEDURE GetAsesoresComisiones
    @FechaValidacion DATE = NULL,
    @FechaPago DATE = NULL,
    @Regional NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT AsesorId, Nombre, Apellido, ComisionTotal
    FROM AsesoresComisiones
    WHERE
        (@FechaValidacion IS NULL OR FechaAsignacion >= @FechaValidacion)
        AND (@FechaPago IS NULL OR FechaAsignacion <= @FechaPago)
        AND (@Regional IS NULL OR Regional = @Regional)
    ORDER BY ComisionTotal DESC;
END
