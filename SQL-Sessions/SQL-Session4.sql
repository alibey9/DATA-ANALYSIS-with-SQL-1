<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/mehme/OneDrive/Desktop/SQL/chinook.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached><db schema="araclar" path="C:\Users\mehme\OneDrive\Desktop\SQL\araclar.db"/></attached><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="200"/><column_width id="3" width="8147"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/><expanded_item id="4" parent="1"/></tab_structure><tab_browse><current_table name="4,6:mainalbums"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="albums" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="132"/><column index="2" value="300"/><column index="3" value="120"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="tracks" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="121"/><column index="2" value="300"/><column index="3" value="132"/><column index="4" value="193"/><column index="5" value="127"/><column index="6" value="300"/><column index="7" value="181"/><column index="8" value="127"/><column index="9" value="140"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">SELECT sum(total) as TOPLAM
FROM invoices;
/**/
SELECT sum(total) as TOPLAM
FROM invoices
WHERE BillingCountry = 'Germany';

/**/
SELECT BillingCountry as TOPLAM, sum(total)
FROM invoices
WHERE BillingCountry = 'Germany';

/**/
SELECT avg(grade) as ORTALAMA_NOT,
count(grade) as NOT_SAYISI,
sum(grade) as NOTLAR_TOPLAMI,
sum(grade)/count(grade) as BOLUM
FROM students;

/**/
SELECT avg(grade),
count(grade),
sum(grade),
sum(grade)/count(grade) as BOLUM
FROM students;

/*========================================================================
GROUP BY with COUNT Function
=========================================================================*/
SELECT country, count(country)
FROM customers
GROUP BY country;

/**/
SELECT country, count(City)
FROM customers
WHERE City = 'Prague'
GROUP BY country;

/**/
SELECT BillingCity, MIN(total) as min_total
FROM invoices
GROUP by BillingCity;

/**/
SELECT BillingCity, BillingCountry, MAX(total) as max_total
FROM invoices
GROUP by BillingCity
ORDER BY BillingCountry DESC;

/**/
SELECT BillingCity, BillingCountry, MAX(total) as max_total
FROM invoices
GROUP by BillingCity
ORDER BY MAX(total) DESC;

/**/
SELECT BillingCity, SUM(total) as SUM_total
FROM invoices
GROUP by BillingCity
ORDER BY SUM(total) DESC;

/**/
select BillingCity, sum(total), min(total), max(total), count(total)
from invoices
group by BillingCity;

/**/
select BillingCity, sum(total), min(total), max(total), count(total)
from invoices
group by BillingCity
order by sum(total) DESC
limit 5;

/**/
select BillingCity, sum(total)
from invoices
group by BillingCity
order by sum(total) desc;

/*========================================================================
Inner JOIN
========================================================================*/
SELECT
    employees.first_name,
    employees.last_name,
    employees.salary,
    departments.dept_name  
  FROM employees
  INNER JOIN departments
    ON employees.emp_id = departments.emp_id
    WHERE employees.salary&gt;80000;
	
	/**/
	SELECT
    employees.first_name,
    employees.last_name,
    employees.salary,
    departments.dept_name  
  FROM employees
  INNER JOIN departments
    ON employees.emp_id = departments.emp_id
    WHERE gender=&quot;Female&quot;;
	
	/**/
	select *
	from markalar;
	</sql><sql name="SQL 4">/* araclar.db ad??ndaki veritaban??n?? kullanarak Markalar ve Siparisler tablolar??ndaki 
marka_id'si ayni olan kay??tlar??n marka_id, marka_adi, siparis_adedi ve siparis_tarihi   
bilgilerini  listeleyen bir sorgu yaziniz.*/
select *
from markalar;

/**/
select
markalar.marka_id,
markalar.marka_adi,
siparisler.siparis_adedi,
siparisler.siparis_tarihi
FROM markalar
inner join siparisler
on markalar.marka_id = siparisler.marka_id;

/**/
select
markalar.marka_id,
markalar.marka_adi,
siparisler.siparis_adedi,
siparisler.siparis_tarihi
FROM markalar
left join siparisler
on markalar.marka_id = siparisler.marka_id;

/*DAHA KISA HAL??*/
select
m.marka_id,
m.marka_adi,
s.siparis_adedi,
s.siparis_tarihi
FROM markalar m
left join siparisler s
on m.marka_id = s.marka_id;

/**/
select * 
FROM markalar m
left join siparisler s
on m.marka_id = s.marka_id;


/* Markalar ve Siparisler tablolar??ndaki t??m ara?? markalar??n??n siparis bilgilerini
(marka_id,marka_adi,siparis_adedi,siparis_tarihi) listeleyen bir sorgu yaziniz.*/
select
m.marka_id,
m.marka_adi,
s.siparis_adedi,
s.siparis_tarihi
FROM markalar m
left join siparisler s
on m.marka_id = s.marka_id;

/**/
select
s.marka_id,
m.marka_adi,
s.siparis_adedi,
s.siparis_tarihi
FROM markalar m
left join siparisler s
on m.marka_id = s.marka_id;

/* Chinook veritaban??ndaki tracks tablosunda bulunan her bir ??ark??n??n
t??r??n?? (genre) listeleyiniz.*/
select *
from tracks;
/**/
select *
from tracks;
/**/
select g.name, t.name
from tracks t
join genres g
on t.GenreId = g.GenreId;

/**/
select g.name, t.name
from tracks t
join genres g
on t.GenreId = g.GenreId;


/* invoice tablosundaki faturalar??n her birinin m????teri ad??n?? 
(FirstName),soyad??n?? (lastName), fatura tarihini (InvoiceDate) ve 
fatura mebla????n?? (total) listeleyen sorguyu yaz??n??z */
select *
from invoices;
/**/
SELECT 
c.FirstName, 
c.LastName,
i.InvoiceDate,
i.total
FROM invoices i
JOIN customers c
on i.CustomerId=c.CustomerId
order by c.FirstName;

/**/
SELECT c.FirstName, 
c.LastName,  
sum(i.total) as sum_total,
count(i.total) as number_of_order
FROM invoices i
JOIN customers c
ON i.CustomerId = c.CustomerId
GROUP BY c.FirstName
order by number_of_order DESC;

/**/
SELECT c.FirstName, 
c.LastName,  
avg(i.total) as avg_total,
count(i.total) as number_of_order
FROM invoices i
JOIN customers c
ON i.CustomerId = c.CustomerId
GROUP BY c.FirstName;

/**/
SELECT 	c.FirstName, c.LastName,
		sum(i.total) as total_amount
FROM 	invoices i
JOIN 	customers c
		ON i.CustomerId = c.CustomerId
GROUP BY c.FirstName;


 /* invoice tablosundaki faturalar??n her birinin m????teri ad??n?? 
(FirstName),soyad??n??(lastName) ve fatura mebla??lar??n??n 
toplam??n??n(total) 40 dolardan fazla olanlar??n?? azalan s??rada
listeleyen sorguyu yaz??n??z */
SELECT c.FirstName, c.LastName,
sum(i.total) as total_amount
FROM invoices i
JOIN customers c
ON i.CustomerId = c.CustomerId
GROUP BY c.FirstName
HAVING total_amount &gt; 40
ORDER BY total_amount DESC;

/**/
SELECT c.CustomerId, c.FirstName, c.LastName,
sum(i.total) as total_amount
FROM invoices i
JOIN customers c
ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
HAVING total_amount &gt; 40
ORDER BY total_amount DESC;

/**/
/*===================================================
 SUBQUERIES
====================================================*/

/* albums tablosundaki Title sutunu 'Faceless' olan kayd??n albumid'si elde ederek 
tracks tablosunda bu de??ere e??it olan kay??tlar??n bilgilerini SUBQUERY yazarak listeyiniz.
Listelemede trackid, name ve albumid bilgilerini bulunmal??d??r. */
select * from albums;

select AlbumId
from albums
where Title='Faceless');

/**/
SELECT TrackId, name, AlbumId
FROM tracks 
WHERE AlbumId = '88';

---subquery
SELECT TrackId, name, AlbumId
FROM tracks 
WHERE AlbumId = (select AlbumId
				from albums
				where Title='Faceless');
				
/**/
SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId =
	(SELECT AlbumId
	from albums
	where Title = &quot;Faceless&quot;);

/* JOIN ??LE */
SELECT t.TrackId, t.name, t.AlbumId
FROM tracks t
JOIN albums a
ON t.AlbumId = a.AlbumId
WHERE a.Title = 'Faceless';

/* SORU 1: albums tablosundaki Title sutunu Faceless veya Let There Be Rock olan kay??tlar??n 
albumid'lerini elde ederek tracks tablosunda bu id'lere e??it olan kay??tlar??n bilgilerini 
SUBQUERY kullanarak listeyiniz. 
Listelemede trackid, name ve albumid bilgileri bulunmal??d??r. */			

/* SORU 2: albums tablosundaki Title sutunu Faceless veya Let There Be Rock olan kay??tlar??n 
albumid'lerini elde ederek tracks tablosunda bu id'lere e??it olan kay??tlar??n bilgilerini 
JOIN kullanarak listeyiniz.Listelemede trackid, name ve albumid bilgileri bulunmal??d??r. */	

/* SORU 3: /* albums tablosundaki Title sutunu Faceless veya Let There Be Rock olan kay??tlar??n 
albumid'lerini elde ederek tracks tablosunda bu id'lere e??it olan kay??tlar??n bilgilerini 
JOIN kullanarak listeyiniz.Listelemede trackid, name ve albumid bilgileri bulunmal??d??r. */	</sql><current_tab id="1"/></tab_sql></sqlb_project>
