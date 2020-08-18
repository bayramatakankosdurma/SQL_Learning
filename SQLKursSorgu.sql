-- select * from shopapp.products;

-- select name from shopapp.products;

-- select Name, Price from shopapp.products;

-- select Name as ProductName, Price as Fiyat from shopapp.products;

-- select * from shopapp.products where Id =1;

-- select Name as Model, Price as Fiyat from shopapp.products where Price >=2000 and Price <=4000

-- select * from shopapp.products where Name ='Samsung s5'

-- select * from shopapp.products where Name !='Samsung s5'

-- select * from shopapp.products where Name ='Samsung s5' and (Price=2000 OR Price=3000);

-- ders 3 where - filtreleme operatörü

-- select *from shopapp.products where Price Between 2000 and 4000

-- select * from shopapp.products where Id Between 1 and 2;

-- select * from shopapp.products where category ='Bilgisayar';

-- select * from shopapp.products where category IN('Telefon', 'Bilgisayar'); -- bilgisayar ve telefon gelir
-- select * from shopapp.products where category NOT IN('Telefon'); -- sadece telefon gelir

-- select * from shopapp.products where Name LIKE '%S%' 
--  yüzdelerin içindekini arayıp bulduğunu koyar. 
-- % sadece başta olursa, s harfi ile biten kayıtları gelir
-- % sadece sonda olursa, s ile başlayan kayıtları getirir
-- '_a%' yazarsak ilk karakter yerine 2. karakteri arar.
-- 'S_m% dersek 2. harfin ne olduğu önemsiz olur ve buna uyan tüm kayıtlar gelir

-- select * from shopapp.products where Name LIKE '%Samsung%' and Description LIKE '%çift sim kart%';


-- ders 4
-- select * from shopapp.products order by Name ASC; çoktan aza olacak şekilde sıralar.
-- select * from shopapp.products order by Name DESC; azdan çoğa olacak şekilde sıralar.


-- select * from shopapp.products order by Category, Price DESC;

-- KURS VİDEO 5
-- select max(Price) as 'maximum fiyat' from shopapp.products;
-- select name ,min(Price) as 'minimum fiyat' from shopapp.products;

-- en ucuz 2 ürünü sıralar. limitten sonraki sayı ne kadarsa o kadar olur.
-- select name, price from shopapp.products order by price limit 2;

-- select count(*) from shopapp.products; kayıtları sayıyor

-- select sum(price) as toplam from shopapp.products;
-- select avg(price) as ortalama from shopapp.products;
-- select sum(price * stock) as toplam from shopapp.products;

-- SQL sorguları kurs 6

-- select length('Atakan Koşdurma') as 'karakter sayisi';
-- select name, length(name) as 'karakter uzunluğu' from shopapp.products; uzunluğu verir
-- select name, concat (left(name,3),right(name,3)) from shopapp.products; 
-- isim satırındaki sağdan 3 soldan 3 karakteri birleştirir

-- select name, lower(name) from shopapp.products; küçük harf yapar.
-- select name, upper(name) from shopapp.products; büyük harf yapar.

-- select name, replace(name,' ', '-') as name from shopapp.products;
-- boşlukları - ile değiştirir

-- select concat(trim('    Atakan Koşdurma    '), '***') trim boşlukları siler
-- select name, trim(name) from shopapp.products; rtrim sağdan ltrim soldan boşlukları alır.

-- kurs video 7 distinct

-- distinct gruplama bir şeye yapar.
-- select distinct Category from shopapp.products;

-- group by ise verilen tüm değerleri yapar.
-- select category as kategori, Count(*) as miktar from shopapp.products group by category

-- select category , Avg(price) as ortalama from shopapp.products
-- where price >3000 group by category;

-- kategoriyi sayar, adet sayısı 1 den fazlaysa yazar.
-- select  category, Count(*) as adet from shopapp.products group by category having Count(*) > 1;


-- kurs video 8 - insert

-- INSERT INTO shopapp.products (Name, Price, ImageUrl, Category, Description, Stock) VALUES ('Xiaomi Pocophone', 4000, '7.jpg', 'Telefon', 'Telefon ucuyor', 10);

-- select * from shopapp.products;

-- INSERT INTO shopapp.products (Name, Price, Category) VALUES ('Xiaomi Red Mi Note 7', 3000, 'Telefon');

-- select count(*) from shopapp.products null bilgi varsa, count onu saymaz.


-- kurs video 9 - update

-- UPDATE shopapp.products SET name='Samsung s1', Price ='1000' WHERE id= '1';

-- select * from shopapp.products;

-- bu sorguyu çalıştırırsak fiyatı 2000 den büyük olan tüm kayıtların ismi Samsung s22 olur.
-- UPDATE shopapp.products SET name='Samsung s22' WHERE Price>2000; 


-- /* shopapp.products tablosundaki price tablosundaki her değere 1000 ekler
-- SET SQL_SAFE_UPDATES =0; hepsini güncellemeye çalışırsak normalde hata veriyor. bu o hatayı yok ediyor.

-- update shopapp.products set price = price + 1000;

-- select * from shopapp.products;
-- */

-- update shopapp.products set price = Price * 1.1 WHERE Category ='Telefon';
-- kategorinin telefon olduğu tüm satırlardaki fiyat değerini 1.1 ile çarpıp günceller.
-- select * from shopapp.products;

-- UPDATE shopapp.products set ImageUrl='noproduct.jpg'
-- WHERE ImageUrl IS NULL;
-- select * from shopapp.products;


-- kurs 10 delete 

-- delete from shopapp.products WHERE id =9;

-- delete from shopapp.products where price>2000 and category = 'Bilgisayar'

-- delete from shopapp.products where description is null


-- kurs 11 forward engineering
-- kurs 12 reverse engineeringproducts

select * from shopapp.products;