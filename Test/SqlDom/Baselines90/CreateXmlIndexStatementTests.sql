CREATE PRIMARY XML INDEX c1
    ON t1(c1);

CREATE PRIMARY XML INDEX c1
    ON db..t1(c1);

CREATE XML INDEX c1
    ON t1(c1)
    USING XML INDEX x2 FOR VALUE;

CREATE XML INDEX c1
    ON db..t1(c1)
    USING XML INDEX x2 FOR PATH;

CREATE XML INDEX c1
    ON db..t1(c1)
    USING XML INDEX x2 FOR PROPERTY;

CREATE PRIMARY XML INDEX c1
    ON t1(c1)
    WITH (PAD_INDEX = ON, FILLFACTOR = 23, DROP_EXISTING = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, ALLOW_ROW_LOCKS = OFF, ALLOW_PAGE_LOCKS = ON, MAXDOP = 20, IGNORE_DUP_KEY = OFF);

CREATE XML INDEX c1
    ON t1(c1)
    USING XML INDEX [xml] FOR PATH
    WITH (DROP_EXISTING = ON, FILLFACTOR = 2);

CREATE XML INDEX c1
    ON t1(c1)
    USING XML INDEX x2 FOR VALUE
    WITH (MAXDOP = 10);
