USE zawodySportowe;
GO

--Wyœwietl odleg³oœci punktów kontrolnych oraz zarejestrowane na nich
--czasy (miêdzyczasy) dla uczestnika, który w tabeli wyników zaj¹³ pozycjê numer 1 w
--zawodach o nazwie "Maraton Warszawski".SELECT	Z.IMIÊ,	Z.NAZWISKO,	P.ODLEG£OŒÆ,	M.CZAS_NA_PUNKCIE,	W.POZYCJA,	W.CZAS_UKOÑCZENIAFROM ZAWODY ZW	JOIN UCZESTNIK U ON ZW.ZAWODY_ID = U.ZAWODY_ID	JOIN ZAWODNIK Z ON U.ZAWODNIK_ID = Z.ZAWODNIK_ID	JOIN WYNIK W ON U.UCZESTNICTWO_ID = W.UCZESTNICTWO_ID	JOIN MIÊDZYCZASY M ON U.UCZESTNICTWO_ID = M.UCZESTNICTWO_ID	JOIN PUNKTY_KONTROLNE P ON M.PUNKT_ID = P.PUNKT_IDWHERE	ZW.NAZWA = N'Maraton Warszawski'	AND W.POZYCJA = 1	ORDER BY 	P.ODLEG£OŒÆ ASC;