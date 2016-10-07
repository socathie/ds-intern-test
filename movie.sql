/* Create a table called movie */
CREATE TABLE movie(
    mid INTEGER PRIMARY KEY,
    title char(100),
    yr year(4),
    director char(30),
    budget REAL,
    gross REAL
);

/* Create a table called actor */
CREATE TABLE actor(
		aid INTEGER PRIMARY KEY,
    aname char(30)
);

/* Create a table called casting */
CREATE TABLE casting(
		mid INTEGER,
    aid	INTEGER,
    ord	INTEGER,
    PRIMARY KEY (mid, aid),
		CONSTRAINT fk_movie_exists FOREIGN KEY (mid) REFERENCES movie(mid),
    CONSTRAINT fk_actor_exists FOREIGN KEY (aid) REFERENCES actor(aid)
);

/* Sample Data */
INSERT INTO movie VALUES
(1, 'Gone with the Wind', 1962, 'Peter Lee', 1000, 1000),
(2, 'Hello', 1962, 'John Swan', 1000, 1000);

INSERT INTO actor VALUES
(1, 'Amy Li'),
(2, 'Betty Du'),
(3, 'Cathie So');

INSERT INTO casting VALUES
(1,1,1),
(1,2,2),
(2,2,1),
(2,3,2);

/* Find the actors in the movie "Gone with the Wind" */
SELECT A.aname
FROM movie M, actor A, casting C
WHERE M.mid = C.mid AND A.aid = C.aid
AND M.mid IN (
	SELECT M.mid
	FROM movie M
	where M.title = 'Gone with the Wind'
);

/* List the films together with the leading star for all 1962 films. */
SELECT M.title, A.aname
FROM movie M, actor A, casting C
WHERE M.mid = C.mid AND A.aid = C.aid AND C.ord = 1 AND M.yr = 1962;
