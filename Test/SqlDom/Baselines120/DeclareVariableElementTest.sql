CREATE PROCEDURE sp1
@p1 INT, @p2 INT NULL=NULL, @p3 INT NOT NULL
AS
BEGIN
    DECLARE @v1 AS INT;
    DECLARE @v2 AS INT NULL;
    DECLARE @v3 AS INT NOT NULL = 4;
END