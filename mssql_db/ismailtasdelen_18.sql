SELECT S.SiparisTarih,U.UrunAdi,S.Miktar FROM SIPARIS S,URUN U WHERE S.U_No=U.UNo ORDER BY SiparisTarih DESC
SELECT DISTINCT M.Adi + '' + M.Soyadi MuseriAdiSoyadi, SUM(S.Miktar) ToplamSiparisMiktari FROM MUSTERI M,SIPARIS S WHERE S.M_No=M.MNo GROUP BY M.Adi,M.Soyadi
CREATE VIEW MusSiparis AS 
SELECT DISTINCT M.Adi + '' + M.Soyadi MuseriAdiSoyadi, SUM(S.Miktar) ToplamSiparisMiktari FROM MUSTERI M,SIPARIS S WHERE S.M_No=M.MNo GROUP BY M.Adi,M.Soyadi
SELECT * FROM MusSiparis
CREATE VIEW MusListe AS
SELECT S.SiparisTarih,U.UrunAdi,S.Miktar FROM SIPARIS S,URUN U WHERE S.U_No=U.UNo
CREATE VIEW MusSehir AS
SELECT M.Adi + ' ' + M.Soyadi Musteri,M.Email,S.SehirAdi FROM MUSTERI M,SEHIR S WHERE M.Sehir=S.Plaka
CREATE OR ALTER TRIGGER Example ON MUSTERI FOR INSERT AS UPDATE SET Sehir=34
INSERT INTO MUSTERI(Adi,Soyadi,Sehir,Adres,Telefon,Email,DogumTarihi)VALUES('Adi','Soyadi','01','Adres','05342950011','Email','01-01-2016')
SELECT * FROM MUSTERI
CREATE OR ALTER TRIGGER Example ON MUSTERI FOR INSERT AS UPDATE MUSTERI SET Sehir=34
INSERT INTO MUSTERI(Adi,Soyadi,Sehir,Adres,Telefon,Email,DogumTarihi)VALUES('Adi','Soyadi','01','Adres','05342950011','Email','01-01-2016')
SELECT * FROM MUSTERI
