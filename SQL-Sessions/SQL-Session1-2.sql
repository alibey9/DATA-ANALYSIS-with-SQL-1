<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/mehme/OneDrive/Desktop/SQL/chinook.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="200"/><column_width id="3" width="8769"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><current_table name="4,8:maininvoices"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="albums" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="132"/><column index="2" value="300"/><column index="3" value="120"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="brand_new_vacation_plan" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="129"/><column index="2" value="120"/><column index="3" value="177"/><column index="4" value="234"/><column index="5" value="111"/><column index="6" value="190"/><column index="7" value="84"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="clients" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="136"/><column index="2" value="156"/><column index="3" value="151"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="customers" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="177"/><column index="2" value="156"/><column index="3" value="165"/><column index="4" value="300"/><column index="5" value="300"/><column index="6" value="264"/><column index="7" value="87"/><column index="8" value="197"/><column index="9" value="168"/><column index="10" value="266"/><column index="11" value="253"/><column index="12" value="300"/><column index="13" value="207"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="employees" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="179"/><column index="2" value="151"/><column index="3" value="156"/><column index="4" value="247"/><column index="5" value="157"/><column index="6" value="265"/><column index="7" value="265"/><column index="8" value="300"/><column index="9" value="133"/><column index="10" value="87"/><column index="11" value="124"/><column index="12" value="168"/><column index="13" value="238"/><column index="14" value="238"/><column index="15" value="300"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="invoices" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="147"/><column index="2" value="177"/><column index="3" value="265"/><column index="4" value="300"/><column index="5" value="264"/><column index="6" value="172"/><column index="7" value="209"/><column index="8" value="253"/><column index="9" value="87"/></column_widths><filter_values><column index="3" value="2013"/><column index="9" value="&gt;10"/></filter_values><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="orders" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="136"/><column index="2" value="145"/><column index="3" value="136"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="students" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="164"/><column index="2" value="156"/><column index="3" value="151"/><column index="4" value="97"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">/*===================================================

    SELECT

===================================================*/

/* tracks tablosundaki track isimlerini (name) sorgulayınız */

 SELECT name FROM tracks;

/* tracks tablosundaki besteci(Composer) ve şarkı 

imlerini (name) sorgulayınız*/

 SELECT Composer,name FROM tracks;

 

/*album tablosundaki tüm bilgileri sorgulayınız
bunu şimdi ekledim*/

 select * from albums;

/*===================================================

DISTINCT

===================================================4*/

/*tracks tablosundaki composer bilgileri sorgulayınız

 (TEKRARLI OLABİLİR)*/

 

 SELECT Composer, name FROM tracks;

 

 /*tracks tablosundaki composer bilgileri sorgulayınız 

 TEKRARSIZ) */

 select DISTINCT Composer from tracks;

 

 SELECT *

 FROM tracks;

 

 SELECT DISTINCT *

 FROM tracks;

 

 </sql><sql name="SQL 2">/*====================================================

WHERE

=====================================================*/

/* composer'i Jimi Hendrix olan şarkıları sorgulayınız*/

SELECT name

FROM tracks

WHERE Composer = 'Jimi Hendrix';



SELECT name, Milliseconds

FROM tracks

WHERE Composer = 'Jimi Hendrix';



/* invoices tablosunda total değeri 10$dan büyük olan faturaların tümk bilgilerini sorgulayınız*/

select *

from invoices

where total &gt; 10;



/*===================================================

LIMIT

====================================================*/

/*invoices tablosunda Total değeri 10$'dan büyük olan 

ilk 4 kayıt'ın InvoiceId,InvoiceDate ve total 

bilgilerini sorgulayiniz */



SELECT InvoiceId, InvoiceDate, total

FROM invoices

WHERE total &gt; 10

LIMIT 4;





/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtlardan işlem tarihi 

(InvoiceDate) en yeni olan 10 kaydın tüm bilgilerini listeyiniz */

SELECT *

FROM invoices

WHERE total &gt; 10

ORDER BY InvoiceDate DESC

LIMIT 10;





 /*invoices tablosundan CustomerId, InvoiceDate,BillingCity

, total değerlerini sorgulayınız. 

(BillingCity - Aşağıdan Yukarı, total - Yukarıdan AŞğıya sıralayarak */



SELECT CustomerId, InvoiceDate, BillingCity, total

FROM invoices

ORDER BY BillingCity ASC, total DESC;





/*===================================================

LOGICAL OPERATORS (AND,OR,NOT)

====================================================*/



/* invoices tablosunda ülkesi (BillingCountry) USA olmayan kayıtları total değerine

göre  AZALAN sırada listeyiniz */ 



SELECT *

FROM invoices

WHERE NOT BillingCountry = &quot;USA&quot; 

ORDER BY total DESC;



/*veya*/



SELECT *

FROM invoices

WHERE BillingCountry != &quot;USA&quot;

ORDER BY total DESC;



/*veya*/



SELECT *

FROM invoices

WHERE BillingCountry &lt;&gt; &quot;USA&quot;

ORDER BY total DESC;



/*veya*/



SELECT *

FROM invoices

WHERE BillingCountry &lt;&gt; &quot;USA&quot;

ORDER BY total DESC;





/* invoices tablosunda, ülkesi (BillingCountry) USA veya Germany olan kayıtları, 

InvoiceId sırasına göre artan sırada listeyiniz */ 



SELECT *

FROM invoices

WHERE BillingCountry = &quot;USA&quot; or BillingCountry = &quot;Germany&quot;

ORDER BY InvoiceId ASC;



/* invoices tablosunda fatura tarihi (InvoiceDate) 01-01-2012 ile 02-01-2013 

tarihleri arasındaki faturaların tüm bilgilerini listeleyiniz */ 

SELECT *

FROM invoices

WHERE InvoiceDate &gt;= &quot;2012-01-01 00:00:00&quot; AND InvoiceDate &lt;= &quot;2013-01-02 00:00:00&quot; 

ORDER BY InvoiceDate ASC;



/*veya*/

SELECT *

FROM invoices

WHERE InvoiceDate BETWEEN &quot;2012-01-01 00:00:00&quot; AND  &quot;2013-01-02 00:00:00&quot; 

ORDER BY InvoiceDate ASC;



SELECT *

FROM invoices

WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31'

ORDER BY InvoiceDate DESC

LIMIT 1;</sql><current_tab id="1"/></tab_sql></sqlb_project>
