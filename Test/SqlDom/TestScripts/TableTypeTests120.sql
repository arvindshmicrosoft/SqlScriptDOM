-- create table type
CREATE TYPE tableType1 AS TABLE (c1 int primary key) WITH (MEMORY_OPTIMIZED = ON);
GO
CREATE TYPE tableType2 AS TABLE (c1 int, c2 as c1 persisted, unique(c1, c2)) WITH (MEMORY_OPTIMIZED = OFF);
GO
CREATE TYPE [dbo].[tableType41] AS TABLE (
[c1] INT NOT NULL,
PRIMARY KEY NONCLUSTERED ([c1] ASC),
[c2] FLOAT NOT NULL,
INDEX [hash_index] NONCLUSTERED HASH ([c2]) WITH (BUCKET_COUNT = 1024),
[c3] DECIMAL NOT NULL INDEX [range_index])
WITH (MEMORY_OPTIMIZED = ON)
GO