-- namer changes all to not exists

CREATE STREAM R(A int, B int)
FROM FILE '../../experiments/data/simple/tiny/r.dat' LINE DELIMITED
CSV ();

SELECT * FROM R r2 WHERE r2.B < ALL (SELECT SUM(r1.A) / 10 FROM R r1);