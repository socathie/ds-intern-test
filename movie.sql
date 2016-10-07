CREATE DATABASE ds_intern;

USE ds_intern;

CREATE TABLE movie(
	id INTEGER PRIMARY KEY
    title char(100)
    yr year(4)
    director char(30)
    budget REAL
    gross REAL
);