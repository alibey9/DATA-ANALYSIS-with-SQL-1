<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/mehme/OneDrive/Desktop/SQL/chinook.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="200"/><column_width id="3" width="8147"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><current_table name="4,6:mainalbums"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="albums" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="142"/><column index="2" value="300"/><column index="3" value="129"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="customers" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="189"/><column index="2" value="166"/><column index="3" value="174"/><column index="4" value="300"/><column index="5" value="300"/><column index="6" value="283"/><column index="7" value="92"/><column index="8" value="211"/><column index="9" value="178"/><column index="10" value="285"/><column index="11" value="271"/><column index="12" value="300"/><column index="13" value="220"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">SELECT sum(total) as TOPLAM

FROM invoices;

/**/

SELECT sum(total) as TOPLAM

FROM invoices

WHERE BillingCountry = 'Germany';
/**/


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

	</sql><current_tab id="0"/></tab_sql></sqlb_project>
