CREATE STREAM R(A int, B int)
FROM FILE '../../experiments/data/simple/tiny/r.dat' LINE DELIMITED
CSV ();

SELECT COUNT(*), SUM(1), SUM(A) FROM R;
