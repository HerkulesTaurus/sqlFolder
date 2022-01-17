use sys;
--  concat---
create table customer (
musteri_no int,
ad VARCHAR(22),
soyad VARCHAR(25),
sehir varchar(45),
cinsiyet varchar(15),
puan int
);
INSERT INTO customer VALUES(111,'ebru', 'akar','denizli','kadin',78);
INSERT INTO customer VALUES(222,'ayse', 'kara','ankara','kadin',90);
INSERT INTO customer VALUES(333,'ali','gel','istanbul','erkek',66);
INSERT INTO customer VALUES(444, 'mehmet','okur','mus','erkek',98);


select concat('Adiniz Soyadiniz:', ad, ' ',soyad ) ad_soyad from customer;
select concat(musteri_no,'.)', ad, ' ', soyad) ad_soyad, sehir, cinsiyet, puan from customer;

/****************************  length-left-right (String functions) ***************************************/
-- sutunda bulunan kelimenin length sayısını verıyor
select ad, length(ad), soyad, length(soyad) 
from customer;

-- sadece ilk harflerini
select ad, left(ad,1) soyad, left(soyad,1)
from customer ;

select ad, soyad, concat(left(ad,1),'.',left(soyad,1),'.') bas_harfler
from customer;

/* soru: isimleri MORRIS -> MRS şeklinde yazdırınız.*/

select ad, concat(left(ad,1), right(left(ad,3),1), right(left(ad,5),1))
from customer;

