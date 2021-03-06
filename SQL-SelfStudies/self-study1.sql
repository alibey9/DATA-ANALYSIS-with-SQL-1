<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/mehme/OneDrive/Desktop/SQL/chinook.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="200"/><column_width id="3" width="8769"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><current_table name="4,8:maininvoices"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="albums" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="142"/><column index="2" value="300"/><column index="3" value="129"/></column_widths><filter_values><column index="2" value="grea"/></filter_values><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="clients" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="146"/><column index="2" value="166"/><column index="3" value="161"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="customers" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="189"/><column index="2" value="166"/><column index="3" value="174"/><column index="4" value="300"/><column index="5" value="300"/><column index="6" value="283"/><column index="7" value="92"/><column index="8" value="211"/><column index="9" value="178"/><column index="10" value="285"/><column index="11" value="271"/><column index="12" value="300"/><column index="13" value="220"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="employees" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort><column index="1" mode="0"/></sort><column_widths><column index="1" value="190"/><column index="2" value="161"/><column index="3" value="166"/><column index="4" value="265"/><column index="5" value="166"/><column index="6" value="282"/><column index="7" value="282"/><column index="8" value="300"/><column index="9" value="142"/><column index="10" value="92"/><column index="11" value="133"/><column index="12" value="178"/><column index="13" value="255"/><column index="14" value="255"/><column index="15" value="300"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="genres" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="136"/><column index="2" value="244"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="invoices" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="157"/><column index="2" value="189"/><column index="3" value="282"/><column index="4" value="300"/><column index="5" value="283"/><column index="6" value="185"/><column index="7" value="226"/><column index="8" value="271"/><column index="9" value="90"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="media_types" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="205"/><column index="2" value="300"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="students" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="176"/><column index="2" value="166"/><column index="3" value="161"/><column index="4" value="103"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="tracks" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="128"/><column index="2" value="300"/><column index="3" value="142"/><column index="4" value="205"/><column index="5" value="136"/><column index="6" value="300"/><column index="7" value="195"/><column index="8" value="135"/><column index="9" value="150"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">/*================================================================
SELF STUDY1
================================================================*/
SELECT count(DISTINCT state)
FROM customers;

/* */

SELECT count(*) 
AS blabla
FROM customers
WHERE country = 'USA';

/* */

SELECT MIN(grade)
AS minimum_grade, LastName AS soy_ad
FROM students
ORDER BY LastName;

/* */
SELECT MIN(Total)
AS lowest_total
FROM invoices
WHERE BillingCountry = 'Canada';

/* */

SELECT MIN(Total)
AS lowest_total_in_CANADA, BillingCity, BillingAddress
FROM invoices
WHERE BillingCountry = 'Canada';

/* */

SELECT *, MIN(Total)
AS lowest_total_in_CANADA
FROM invoices
WHERE BillingCountry = 'Canada';

/* */

SELECT *, Total
AS lowest_total_in_CANADA
FROM invoices
WHERE BillingCountry = 'Canada'
ORDER BY Total
LIMIT 3;

/* */
SELECT MIN(InvoiceDate)
AS earliest_date
FROM invoices;

/* */
SELECT MAX(InvoiceDate)
AS latest_date
FROM invoices;

/* */
SELECT *, MAX(InvoiceDate)
AS latest_date
FROM invoices;

/* */
SELECT *, MAX(InvoiceDate)
AS latest_date
FROM invoices
WHERE BillingCity = 'Paris';


/*================================================================
SQL SESSION 3
================================================================*/
SELECT *
from invoices
where BillingCity LIKE '%Os%';

/*===================================================
LIKE
====================================================*/
/* tracks tablosunda Composer sutunu Bach ile biten kay??tlar??n Name bilgilerini 
listeyen sorguyu yaz??n??z*/
SELECT composer, name
FROM tracks
WHERE Composer like '%Bach';

/* albulm tablosunda Title (ba??l??k) sutununda Greatest i??eren kay??tlar??n t??m bilgilerini 
listeyen sorguyu yaz??n??z*/

SELECT *
FROM albums
where Title LIKE '%Greatest%';

/* */
SELECT *
FROM albums
where Title LIKE 'Greatest%';

/* invoices tablosunda, 2010 ve 2019 aras?? bir tarihte (InvoiceDate) Sadece ??ubat
aylar??nda ger??ekle??mi?? olan faturalar??n	t??m bilgilerini listeleyen sorguyu yaz??n??z*/

SELECT *
FROM invoices
WHERE InvoiceDate LIKE '201_-02%';


/* customers tablosunda, isimleri (FirstName) ???? harfli olan m????terilerin FirstName, 
LastName ve City bilgilerini	listeleyen sorguyu yaz??n??z*/
SELECT FirstName, LastName, City
FROM customers
WHERE FirstName LIKE '___';


/* customers tablosunda, soyisimleri Sch veya Go ile ba??layan m????terilerin FirstName, 
LastName ve City bilgilerini listeleyen sorguyu yaz??n??z*/
SELECT FirstName, LastName, City
FROM customers
WHERE LastName LIKE 'Sch%' OR LastName LIKE 'Go%';

/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
-- COUNT
------------------------------------------------------------------------------

SELECT *
FROM invoices
WHERE BillingState IS NULL;

/* */
SELECT count(*)
FROM invoices
WHERE BillingState IS NULL;

/* invoices tablosunda ka?? adet fatura bulundu??unu d??nd??ren sorgu yaz??n??z */

SELECT COUNT(*)
FROM invoices

/* */
SELECT * 
FROM invoices; /* bu ??al????mad??, hata verdi ve bu y??zden yeni bir sayfada denedik ve ??al????t??...</sql><sql name="SQL 2">/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
/*	
-- COUNT
------------------------------------------------------------------------------*/

SELECT * 
FROM invoices;

/* tracks tablosunda ka?? adet farkl?? Composer bulundu??unu d??nd??ren sorguyu yaz??n??z*/
select count(composer)
from tracks;

/* */
select count(DISTINCT composer)
from tracks;

/* */
select count(DISTINCT composer)
as number_of_composer
from tracks;

/* */
select count(DISTINCT composer)
from tracks T; 

/* */
SELECT count(*)
FROM invoices
WHERE BillingState IS NULL;

/* */
SELECT count(*)
FROM invoices
WHERE BillingState IS NOT NULL;
/* */

-- MIN,MAX
-------------------------------------------------------------------------------------------------	
/* tracks tablosundaki ??ark?? s??resi en k??sa olan ??ark??n??n ad??n?? ve s??resi listeleyen
sorguyu yaziniz */
SELECT name, Milliseconds, MIN(Milliseconds)
FROM tracks;

SELECT name, Milliseconds, MIN(Milliseconds)/1000.0 as min_duration_sc
FROM tracks;

SELECT *, MIN(Total)
AS lowest_total_in_CANADA
FROM invoices
WHERE BillingCountry = 'Canada';

/*students tablosundaki en d??????k ve en y??ksek notu listeleyen sorguyu yaz??n??z */
SELECT MIN(Grade) as min_grade, MAX(Grade) as max_grade
FROM students;

-- SUM,AVG
-------------------------------------------------------------------------------------------------	
/* invoices  tablosundaki faturalar??n toplam de??erini listeyiniz */

SELECT SUM(total)
FROM invoices;

/* */
SELECT ROUND(SUM(total), 2) as total_amount
FROM invoices;


/*===================================================
 GROUP BY
====================================================*/

/* tracks tablosundaki her bir Bestecisinin (Composer) toplam ??ark?? say??s??n?? 
Besteci ad??na g??re grupland??rarak listeleyen sorguyu yaz??n??z. */
SELECT Composer, COUNT(name)
FROM tracks
WHERE composer IS NOT NULL
GROUP BY Composer
ORDER BY COUNT(name) DESC;

/* */
SELECT Composer, COUNT(name) as AA
FROM tracks
WHERE composer IS NOT NULL
GROUP BY Composer
ORDER BY COUNT(name) DESC;

 /* invoices tablosundaki her bir ??lkenin (BillingCountry) 
 fatura ortalamalar??n?? hesaplayan ve ??lke bilgileri ile 
 listeleyen sorguyu yaz??n??z.*/
 
 SELECT BillingCountry, ROUND(AVG(Total), 2) as avg_total
 FROM invoices
 GROUP BY BillingCountry;
 
 /* */
  SELECT BillingCountry, ROUND(AVG(Total), 2) as avg_total
 FROM invoices
 WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2011-12-31 00:00:00'
 GROUP BY BillingCountry;
 
 </sql><current_tab id="1"/></tab_sql></sqlb_project>
