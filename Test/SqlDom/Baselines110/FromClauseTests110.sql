SELECT *
FROM CONTAINSTABLE (t1, PROPERTY(c1, 'my_property'), 'foo', LANGUAGE 1033, 10);


GO
SELECT TOP (5) *
FROM Restaurats AS r WITH (SPATIAL_WINDOW_MAX_CELLS = 512)
WHERE r.type = 'Italian'
      AND r.location.STDistance(@my_location) IS NOT NULL
ORDER BY r.location.STDistance(@my_location);


GO
SELECT *
FROM SEMANTICKEYPHRASETABLE (t1, *) AS t_alias;


GO
SELECT *
FROM SEMANTICKEYPHRASETABLE (remote1.db1.s1.t1, *, 10) AS t_alias;


GO
SELECT *
FROM SEMANTICKEYPHRASETABLE (db1.s1.t1, (c1, c2, c3), -10);


GO
SELECT *
FROM SEMANTICSIMILARITYTABLE (t1, c1, @v);


GO
SELECT *
FROM SEMANTICSIMILARITYTABLE (db1.s1.t1, c1, 10) AS t_alias;


GO
SELECT *
FROM SEMANTICSIMILARITYDETAILSTABLE (t1, c1, 10, c2, -100);


GO
SELECT *
FROM SEMANTICSIMILARITYDETAILSTABLE (db1.s1.t1, c1, 10, c2, @v) AS t_alias;