-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- DELETE
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
DELETE FROM Projekcija;
DELETE FROM Sala;
DELETE FROM Licencira;
DELETE FROM Licenca;
DELETE FROM Film;
DELETE FROM Zanr;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- INSERT
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
INSERT INTO Zanr (IdZanr, NazZanr, OpisZanr) VALUES (1, 'Action', 'Movies with a lot of physical activity and excitement');
INSERT INTO Zanr (IdZanr, NazZanr, OpisZanr) VALUES (2, 'Comedy', 'Movies intended to make the audience laugh');
INSERT INTO Zanr (IdZanr, NazZanr, OpisZanr) VALUES (3, 'Drama', 'Movies that portray realistic characters and emotional themes');
INSERT INTO Zanr (IdZanr, NazZanr, OpisZanr) VALUES (4, 'Science Fiction', 'Movies that explore speculative concepts, often involving futuristic technology');
INSERT INTO Zanr (IdZanr, NazZanr, OpisZanr) VALUES (5, 'Horror', 'Movies designed to scare or invoke fear in the audience');

INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (1, 'Inception', 'A mind-bending heist movie', '8.8', 4, 90);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (2, 'The Shawshank Redemption', 'Drama about a mans escape from prison', '9.3', 3, 120);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (3, 'The Dark Knight', 'Superhero action film directed by Christopher Nolan', '9.0', 1, 210);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (4, 'Forrest Gump', 'A mans epic journey through life', '8.8', 2, 90);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (5, 'The Godfather', 'Crime drama about a powerful Mafia family', '9.2', 3, 95);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (6, 'The Matrix', 'A sci-fi film about a computer hacker who discovers the truth about his reality', '8.7', 1, 150);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (7, 'Inglourious Basterds', 'Quentin Tarantinos war film with an ensemble cast', '8.3', 3, 90);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (8, 'The Grand Budapest Hotel', 'A comedy-drama film directed by Wes Anderson', '8.1', 2, 120);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (9, 'Pulp Fiction', 'Quentin Tarantinos nonlinear crime film', '8.9', 3, 90);
INSERT INTO Film (IdF, NazF, OpisF, IMDbRatF, IdZanr, TrajF) VALUES (10, 'Interstellar', 'A space exploration film directed by Christopher Nolan', '8.6', 4, 100);

INSERT INTO Licenca (IdLic, DatLic) VALUES (1, TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO Licenca (IdLic, DatLic) VALUES (2, TO_DATE('2024-02-15', 'YYYY-MM-DD'));
INSERT INTO Licenca (IdLic, DatLic) VALUES (3, TO_DATE('2024-03-20', 'YYYY-MM-DD'));
INSERT INTO Licenca (IdLic, DatLic) VALUES (4, TO_DATE('2024-04-10', 'YYYY-MM-DD'));
INSERT INTO Licenca (IdLic, DatLic) VALUES (5, TO_DATE('2024-05-05', 'YYYY-MM-DD'));

INSERT INTO Licencira (IdLic, IdF) VALUES (1, 1);
INSERT INTO Licencira (IdLic, IdF) VALUES (1, 2);
INSERT INTO Licencira (IdLic, IdF) VALUES (2, 3);
INSERT INTO Licencira (IdLic, IdF) VALUES (2, 4);
INSERT INTO Licencira (IdLic, IdF) VALUES (3, 5);
INSERT INTO Licencira (IdLic, IdF) VALUES (3, 6);
INSERT INTO Licencira (IdLic, IdF) VALUES (4, 7);
INSERT INTO Licencira (IdLic, IdF) VALUES (4, 8);
INSERT INTO Licencira (IdLic, IdF) VALUES (5, 9);

INSERT INTO Sala (IdS, NazS, BrMesS) VALUES (1, 'Hall 1', 100);
INSERT INTO Sala (IdS, NazS, BrMesS) VALUES (2, 'Hall 2', 80);
INSERT INTO Sala (IdS, NazS, BrMesS) VALUES (3, 'Hall 3', 120);

INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 1);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-16 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 2, 1);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-17 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 1, 3, 2);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-18 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 4, 2);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-19 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 5, 3);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 6, 3);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-21 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 7, 4);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-22 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 1, 8, 4);
INSERT INTO Projekcija (DatVremProj, IdS, Naoc3DProj, IdF, IdLic) VALUES (TO_DATE('2024-01-23 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 9, 5);
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- VIEWS
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CREATE OR REPLACE VIEW CountLicencedMoviesByGenre AS
SELECT
  Z.IdZanr,
  Z.NazZanr,
  COUNT(L.IdF) AS NumberOfLicensedMovies
FROM
  Zanr Z
LEFT OUTER JOIN
  Film F ON Z.IdZanr = F.IdZanr
LEFT OUTER JOIN
  Licencira L ON F.IdF = L.IdF
GROUP BY
  Z.IdZanr, Z.NazZanr
ORDER BY
  NumberOfLicensedMovies DESC;
SELECT * FROM CountLicencedMoviesByGenre;

CREATE OR REPLACE VIEW SelectHallsWithAverageProjectionTimeOver120 AS
SELECT
  S.IdS,
  S.NazS,
  AVG(F.TrajF) AS AverageMovieTime
FROM
  Sala S
LEFT OUTER JOIN
  Projekcija P ON S.IdS = P.IdS
LEFT OUTER JOIN
  Film F ON P.IdF = F.IdF
GROUP BY
  S.IdS, S.NazS
HAVING
  AVG(F.TrajF) >= 120
ORDER BY
  AverageMovieTime DESC;
SELECT * FROM SelectHallsWithAverageProjectionTimeOver120;

CREATE OR REPLACE VIEW SelectLicencesWithMovieAverageRatingOver9 AS
SELECT
  L.IdLic,
  AVG(F.IMDbRatF) AS AverageIMDbRating
FROM
  Licenca L
LEFT OUTER JOIN
  Licencira LC ON L.IdLic = LC.IdLic
LEFT OUTER JOIN
  Film F ON LC.IdF = F.IdF
GROUP BY
  L.IdLic
HAVING
  AVG(F.IMDbRatF) >= 9
ORDER BY
  AverageIMDbRating DESC;
SELECT * FROM SelectLicencesWithMovieAverageRatingOver9;