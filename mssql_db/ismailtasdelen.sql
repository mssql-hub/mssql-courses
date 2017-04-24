SELECT DATEPART(YEAR,SIPARIS.SiparisTarih) YIL,
	   DATEPART(MONTH,SIPARIS.SiparisTarih) AY,
	   SUM(SIPARIS.Miktar) ToplamSiparisMiktar 
	   FROM SIPARIS
	   GROUP BY DATEPART(YEAR,SIPARIS.SiparisTarih),DATEPART(MONTH,SIPARIS.SiparisTarih) 
	   ORDER BY ToplamSiparisMiktar ASC

SELECT DATEPART(YEAR,SIPARIS.SiparisTarih) YIL,
	   DATEPART(MONTH,SIPARIS.SiparisTarih) AY,
	   SUM(SIPARIS.Miktar) ToplamSiparisMiktar,
	   URUN.UrunAdi
	   FROM SIPARIS, URUN
	   WHERE SIPARIS.U_No = URUN.UNo
	   GROUP BY DATEPART(YEAR,SIPARIS.SiparisTarih),DATEPART(MONTH,SIPARIS.SiparisTarih), URUN.UrunAdi
	   ORDER BY ToplamSiparisMiktar DESC

SELECT SUM(SIPARIS.Miktar) ToplamSiparisMiktar,
	   URUN.UrunAdi
	   FROM SIPARIS, URUN
	   WHERE SIPARIS.U_No = URUN.UNo
	   GROUP BY URUN.UrunAdi
	   ORDER BY ToplamSiparisMiktar DESC

SELECT U.UrunAdi, SUM(S.Miktar) ToplamSiparisMiktar
	   FROM SIPARIS S INNER JOIN URUN U ON S.U_No = U.UNo
	   GROUP BY U.UrunAdi
	   ORDER BY ToplamSiparisMiktar DESC
