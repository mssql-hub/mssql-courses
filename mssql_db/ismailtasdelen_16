SELECT S.SiparisTarih Siparis_Tarih,
	   U.UrunAdi Urun_Adi,
	   U.UrunOzellik Urun_Ozellik,
	   S.Miktar,
	   S.Miktar * S.SatisFiyat Tutar,
	   M.Adi Musteri_Adi,
	   M.Soyadi Musteri_Soyadi,
	   M.Email Musteri_Email,
	   SS.SehirAdi
	   FROM SIPARIS S, URUN U, MUSTERI M, SEHIR SS
	   WHERE S.U_No = U.UNo
	   AND S.M_No = M.MNo
	   AND M.Sehir = SS.Plaka
	   ORDER BY S.SiparisTarih ASC

SELECT S.SiparisTarih Siparis_Tarih,
	   U.UrunAdi Urun_Adi,
	   U.UrunOzellik Urun_Ozellik,
	   S.Miktar,
	   S.Miktar * S.SatisFiyat Tutar,
	   M.Adi Musteri_Adi,
	   M.Soyadi Musteri_Soyadi,
	   M.Email Musteri_Email,
	   SS.SehirAdi
	   FROM SIPARIS S, URUN U, MUSTERI M, SEHIR SS
	   WHERE S.U_No = U.UNo
	   AND S.M_No = M.MNo
	   AND M.Sehir = SS.Plaka
	   ORDER BY S.SiparisTarih DESC

SELECT Sehir FROM MUSTERI GROUP BY Sehir
SELECT Sehir, COUNT(*) FROM MUSTERI GROUP BY Sehir
SELECT COUNT(Adi) Sayi, Adi FROM MUSTERI GROUP BY Adi
SELECT COUNT(Adi) Sayi, Adi FROM MUSTERI GROUP BY Adi HAVING COUNT(Adi) >= 2

UPDATE SIPARIS SET Tutar = Miktar * SatisFiyat

SELECT U_No, SUM(Tutar) ToplamTutar, MAX(Tutar) EnYuksekTutar, COUNT(U_No) UrunSayi 
	FROM SIPARIS 
	GROUP BY U_No HAVING SUM(Tutar) > 500 ORDER BY SUM(Tutar) ASC

SELECT U_No, SUM(Tutar) ToplamTutar, MAX(Tutar) EnYuksekTutar, COUNT(U_No) UrunSayi 
	FROM SIPARIS 
	GROUP BY U_No HAVING SUM(Tutar) > 500 ORDER BY SUM(Tutar) DESC

SELECT U_No, SUM(Tutar) ToplamTutar, MAX(Tutar) EnYuksekTutar, COUNT(U_No) UrunSayi 
	FROM SIPARIS 
	GROUP BY U_No HAVING SUM(Tutar) > 500 ORDER BY ToplamTutar ASC

SELECT U_No, SUM(Tutar) ToplamTutar, MAX(Tutar) EnYuksekTutar, COUNT(U_No) UrunSayi 
	FROM SIPARIS 
	GROUP BY U_No HAVING SUM(Tutar) > 500 ORDER BY ToplamTutar DESC

SELECT U_No, SUM(Tutar) ToplamTutar, MAX(Tutar) EnYuksekTutar, COUNT(U_No) UrunSayi, U.UrunAdi 
	FROM SIPARIS,URUN U
	WHERE SIPARIS.U_No = U.UNo
	GROUP BY U_No,U.UrunAdi HAVING SUM(Tutar) > 500 ORDER BY SUM(Tutar) ASC

SELECT U_No, SUM(Tutar) ToplamTutar, MAX(Tutar) EnYuksekTutar, COUNT(U_No) UrunSayi, U.UrunAdi 
	FROM SIPARIS,URUN U
	WHERE SIPARIS.U_No = U.UNo
	GROUP BY U_No,U.UrunAdi HAVING SUM(Tutar) > 500 ORDER BY SUM(Tutar) DESC
