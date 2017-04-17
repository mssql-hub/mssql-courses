SELECT M.Adi Musteri_Adi,
	   M.Soyadi Musteri_Soyadi,
	   M.Email Musteri_Email,
	   U.UrunAdi Satilan_Urun,
	   S.Miktar,
	   S.SatisFiyat Satis_Fiyat,
	   S.Tutar,
	   S.SiparisTarih Siparis_Tarih
	   FROM MUSTERI M,
		    URUN U,
		    SIPARIS S
	   WHERE S.M_No = MNo 
	   AND S.U_No = U.UNo

UPDATE SIPARIS SET Tutar = Miktar * SatisFiyat

SELECT DISTINCT M.Adi + ' ' + M.Soyadi Musteri 
				FROM MUSTERI M, SIPARIS S, URUN U 
				WHERE S.M_No = M.MNo AND S.U_No = U.UNo AND U.UrunAdi LIKE '%Emniyet Kemeri%'

SELECT M.Adi + ' ' + M.Soyadi Musteri, SiparisTarih, Miktar, UrunAdi, Tutar 
				FROM MUSTERI M, URUN U, SIPARIS S 
				WHERE S.M_No = M.MNo AND S.U_No = U.UNo AND S.Tutar >= 1000

SELECT TOP 3 M.Adi + ' ' + M.Soyadi Musteri, SiparisTarih, Miktar, UrunAdi, Tutar 
				FROM MUSTERI M, URUN U, SIPARIS S 
				WHERE S.M_No = M.MNo AND S.U_No = U.UNo AND S.Tutar >= 1000 ORDER BY Tutar DESC
