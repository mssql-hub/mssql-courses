SELECT * FROM MUSTERI
SELECT * FROM SEHIR
SELECT * FROM URUN
SELECT * FROM SIPARIS
SELECT COUNT(*) FROM MUSTERI
SELECT COUNT(*) FROM MUSTERI WHERE Adres is null
SELECT Adi,Soyadi,Email FROM MUSTERI WHERE Adi like 'A%'
SELECT Adi FROM MUSTERI WHERE Adi like 'A%' and Adres='Merkez'
SELECT * FROM MUSTERI WHERE Adi like 'A%' and (Adres='Merkez' or Adres is null)
SELECT * FROM SEHIR WHERE SehirAdi like 'İ%'
SELECT * FROM URUN WHERE BirimFiyat >= 350 and EldekiStok <= 50
SELECT UrunAdi, BirimFiyat FROM URUN WHERE UrunAdi like '%Outdoor%'
UPDATE MUSTERI SET Adres='MERKEZ' WHERE Adres in null
SELECT * FROM MUSTERI WHERE Adres='Merkez'12
SELECT * FROM SIPARIS WHERE Tutar >= 500
SELECT * FROM MUSTERI WHERE Soyadi LIKE 'D%' and Adres='Merkez'
SELECT * FROM MUSTERI WHERE Sehir=34 or Sehir=35
SELECT * FROM MUSTERI WHERE Sehir BETWEEN 1 and 10
SELECT * FROM URUN WHERE BirimFiyat BETWEEN 50 AND 120
SELECT * FROM URUN WHERE BirimFiyat >=50 AND BirimFiyat<=120
SELECT * FROM URUN WHERE EldekiStok not between 50 and 70
SELECT * FROM URUN WHERE EldekiStok < 50 or EldekiStok > 70
SELECT * FROM MUSTERI WHERE Adi in ('Yasin','Furkan','Aykut','Yahya')
SELECT Adi FROM MUSTERI WHERE Adi in ('Yasin','Furkan','Aykut','Yahya')
SELECT DISTINCT Adi FROM MUSTERI WHERE Adi in ('Yasin','Furkan','Aykut','Yahya')
SELECT DISTINCT Adi FROM MUSTERI WHERE Adi in ('Yasin','Furkan','Aykut','Yahya') ORDER BY Adi
SELECT * FROM  MUSTERI WHERE Sehir IN(34,35,06,07,12) and Soyadi like 'A%' ORDER BY Adi, Soyadi