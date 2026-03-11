USE zawodySportowe;
GO

-- Policz ilu uczestników posiada status "ukoñczono" w tabeli wyników,
-- którzy zostali sklasyfikowani w kategorii o nazwie "X" w ramach konkretnych
-- zawodów.

SELECT
	KAT.KATEGORIA_ID,
	COUNT(*) AS ILU_STATUS_UKONCZYLO

FROM WYNIK W
	JOIN KATEGORIA KAT ON W.KATEGORIA_ID = KAT.KATEGORIA_ID
	JOIN UCZESTNIK U ON W.UCZESTNICTWO_ID = U.UCZESTNICTWO_ID
	JOIN ZAWODY ZW ON U.ZAWODY_ID = ZW.ZAWODY_ID

WHERE
	W.STATUS = N'Ukoñczono'
	AND KAT.KATEGORIA_ID = N'K18'
	AND ZW.NAZWA = N'Maraton Warszawski'

GROUP BY
	KAT.KATEGORIA_ID;