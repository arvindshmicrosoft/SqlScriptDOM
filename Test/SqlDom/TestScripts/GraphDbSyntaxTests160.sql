-- ordered columnstore index, new in SQL 2022
create columnstore index occi1 on n1 (c1, $node_id, c2)
