-- checking using WINDOW clause in a query
SELECT Sum(c1) OVER Win1 FROM t1
WINDOW Win1 AS (PARTITION BY c1)
GO

CREATE PROCEDURE sp1 AS
BEGIN
	SELECT Sum(c1) OVER Win1 FROM t1
	WINDOW Win1 AS (PARTITION BY c1)
END
GO

-- checking using partial window specifications in OVER
SELECT Sum(c1) OVER (Win1 ORDER BY c1) FROM t1
WINDOW Win1 AS (PARTITION BY c1)
GO

CREATE PROCEDURE sp2 AS
BEGIN
	SELECT Sum(c1) OVER (Win1 ORDER BY c1) FROM t1
	WINDOW Win1 AS (PARTITION BY c1)
END
GO

SELECT Sum(c1) OVER (Win1 ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) FROM t1
WINDOW Win1 AS (ORDER BY c1)
GO

CREATE PROCEDURE sp3 AS
BEGIN
	SELECT Sum(c1) OVER (Win1 ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) FROM t1
	WINDOW Win1 AS (ORDER BY c1)
END
GO

SELECT Sum(c1) OVER (Win1 PARTITION BY c1 ROWS UNBOUNDED PRECEDING) FROM t1
WINDOW Win1 AS (ORDER BY c1)
GO

CREATE PROCEDURE sp4 AS
BEGIN
	SELECT Sum(c1) OVER (Win1 PARTITION BY c1 ROWS UNBOUNDED PRECEDING) FROM t1
	WINDOW Win1 AS (ORDER BY c1)
END
GO

-- checking using window references
SELECT Sum(c1) OVER Win1 FROM t1
WINDOW Win1 AS (Win2), Win2 AS (PARTITION BY c1)
GO

CREATE PROCEDURE sp5 AS
BEGIN
	SELECT Sum(c1) OVER Win1 FROM t1
	WINDOW Win1 AS (Win2), Win2 AS (PARTITION BY c1)
END
GO

-- checking using window with table alias
SELECT Sum(t.c1) OVER Win1 FROM t1 t
WINDOW Win1 AS (PARTITION BY t.c1)
GO

CREATE PROCEDURE sp6 AS
BEGIN
	SELECT Sum(t.c1) OVER Win1 FROM t1 t
	WINDOW Win1 AS (PARTITION BY t.c1)
END
GO

-- checking specifying window specification only in OVER clause
SELECT Sum(t.c1) OVER (PARTITION BY t.c1) FROM t1 as t
GO

-- checking specifying window with GROUP BY and ORDER BY
SELECT Sum(t.c1) OVER Win1 FROM t1 t
GROUP BY t.c1
WINDOW Win1 AS (PARTITION BY t.c1)
ORDER BY t.c1
GO