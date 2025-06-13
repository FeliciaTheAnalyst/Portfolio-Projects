-- STORES SALES PERFORMAMCE -- 

Select* from stores_sales_performance;   Select* from stores_sales_performance_2;
 -- 
Select distinct Store_Name, Province, city, Estimated_Annual_Revenue_ZAR FROM stores_sales_performance
order by Estimated_Annual_Revenue_ZAR desc;

Select City, Total_Sales_ZAR from stores_sales_performance;

Select Product_Type, Total_Sales_ZAR, Estimated_Annual_Revenue_ZAR from stores_sales_performance;

Select Day_of_Week, Unit_Sold, Product_Price_ZAR FROM stores_sales_performance;

Select Product_Type,Unit_Sold, Product_Price_ZAR  from stores_sales_performance
where Product_Type = 'Sneakers';

-- Table Join --

select*
from stores_sales_performance ssp1
inner join stores_sales_performance_2 ssp2
on ssp1.Store_ID = ssp2.Store_ID;

select*
from stores_sales_performance ssp1
Left join stores_sales_performance_2 ssp2
on ssp1.Store_ID = ssp2.Store_ID;

select*
from stores_sales_performance ssp1
right join stores_sales_performance_2 ssp2
on ssp1.Store_ID = ssp2.Store_ID;

select*
from stores_sales_performance sp1
join stores_sales_performance SP2
on sp1.Store_Name = sp2.Store_Name;

select Province, Product_Type, Unit_Sold FROM stores_sales_performance
group by Province, Unit_Sold, Product_Type;

select Store_Name, Employees, Estimated_Annual_Revenue_ZAR
from stores_sales_performance
having 20 = Employees
order by Store_Name asc;

-- STORES SALES PERFORMAMCE -- 
