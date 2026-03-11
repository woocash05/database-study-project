USE zawodySportowe;
GO

-- Wyœwietl imiona, nazwiska oraz numery startowe wszystkich
-- uczestników zawodów o nazwie "Berlin Marathon", którzy w swoim profilu
-- zawodnika maj¹ przypisany kraj o nazwie "Niemcy"

SELECT
	Z.IMIÊ,
	Z.NAZWISKO,
	U.NUMER_STARTOWY,
	K.NAZWA_KRAJU

FROM ZAWODNIK Z
	JOIN UCZESTNIK U ON Z.ZAWODNIK_ID = U.ZAWODNIK_ID
	JOIN KRAJ K ON Z.KRAJ_ID = K.KRAJ_ID
	JOIN WYNIK W ON U.UCZESTNICTWO_ID = W.UCZESTNICTWO_ID
	JOIN ZAWODY ZW ON U.ZAWODY_ID = ZW.ZAWODY_ID

WHERE 
	K.NAZWA_KRAJU = 'Niemcy'
	AND ZW.NAZWA = 'Berlin Marathon'

