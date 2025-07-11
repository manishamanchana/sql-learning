Advanced Joins:
- Left Anti Join
- Right Anti join
- Full Anti Join
- Cross Join

LEFT ANTI JOIN:
returns rows from LEFT table that has NO MATCH in RIGHT table.
Table A will be the primary source and B will be nothing but lookup and used for just filtering
Syntax:
SELECT *
FROM A
LEFT JOIN B
ON A.key = B.key
WHERE B.key IS NULL

order of the tables is really important