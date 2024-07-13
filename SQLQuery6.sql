select*from Supermarket_Cleaned;
####  Sales Performance

#1-Sales Performance by location (Branch,City)
select City,Branch,SUM(Total) AS total_Sales from Supermarket_Cleaned
GROUP BY City,Branch
order by Total_Sales asc;

#2- Sales Performance By Demographics (Gender,Customer type)
A
SELECT Gender,Customer_type,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Gender,Customer_type
order by Total_Sales asc;
b
SELECT Customer_type,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Customer_type
order by Total_Sales asc;
c
SELECT Gender,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Gender
order by Total_Sales asc;

#3- Sales Performance by Product(Product_line, Branch)
A
SELECT Product_line,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Product_line
order by Total_Sales asc;
B
SELECT Branch,Product_line,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Product_line,Branch
order by Total_Sales asc;

#4-Sales Performance by Payment Method(Payment,Branch,Product_line)
A
SELECT Payment,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Payment
order by Total_Sales asc;
B
SELECT Branch,Payment,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Branch,Payment
order by Total_Sales asc;
C
SELECT Product_line,Payment,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Product_line,Payment
order by Total_Sales asc;
#5-Sales Performance by Date (Date,Branch,Product_line)
A
SELECT Year,Month,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Year,Month
order by Total_Sales asc;
B
SELECT Branch,Year,Month,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Branch,Year,Month
order by Month asc;
C
SELECT Year,Month,Product_line,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Year,Month,Product_line
order by Month asc;

#6-Sales Performance by Working hours(time,Branch)
A
SELECT hour,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY hour
order by hour asc;

B
SELECT Branch,hour,sum(Total) AS 'Total_Sales' from Supermarket_Cleaned
GROUP BY Branch,hour
order by Branch asc;

#### Product Demand Performance

#7-Product Demand Performance by location (Branch,City)
select City,Branch,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY City,Branch
order by City asc;

#8- Product Demand Performance By Demographics (Gender,Customer type)
A
SELECT Gender,Customer_type,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Gender,Customer_type
order by Gender asc;
b
SELECT Customer_type,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Customer_type
order by Total_Quantity asc;
c
SELECT Gender,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Gender
order by Total_Quantity asc;


#9- Product Demand Performance by Product(Product_line, Branch)
A
SELECT Product_line,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Product_line
order by Total_Quantity asc;
B
SELECT Branch,Product_line,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Product_line,Branch
order by Branch asc;

#10-Product Demand Performance by Payment Method(Payment,Branch,Product_line)
A
SELECT Payment,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Payment
order by Total_Quantity asc;
B
SELECT Branch,Payment,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Branch,Payment
order by Branch asc;
C
SELECT Product_line,Payment,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Product_line,Payment
order by Product_line asc;

#11-Product Demand Performance by Date (Date,Branch,Product_line)
A
SELECT Year,Month,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Year,Month
order by Month asc;
B
SELECT Branch,Year,Month,SUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Branch,Year,Month
order by Month asc;
C
SELECT Year,Month,Product_line,sUM(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Year,Month,Product_line
order by Month asc;

#12-Product Demand Performance by Working hours(time,Branch)
A
SELECT hour,sum(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY hour
order by hour asc;

B
SELECT Branch,hour,sum(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Branch,hour
order by Branch asc;
C
SELECT Product_line,hour,sum(Quantity) AS 'Total_Quantity' from Supermarket_Cleaned
GROUP BY Product_line,hour
order by Product_line asc;

#### Customer Satisfaction Indicators

#13-Customer Satisfaction Performance by location (Branch,City)
A
select Branch,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Branch
order by Branch asc;
B
select City,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY City
order by City asc;

#14- Customer Satisfaction Performance By Demographics (Gender,Customer type)
A
SELECT Gender,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Gender
order by Gender asc;
b
SELECT Customer_type,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Customer_type
order by Customer_type asc;

#15- Customer Satisfaction Performance by Product(Product_line, Branch)
A
SELECT Product_line,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Product_line
order by Average_Rating asc;
B
SELECT Gender,Product_line,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Gender,Product_line
order by Gender asc;
C
SELECT Customer_type,Product_line,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Customer_type,Product_line
order by Customer_type asc;

#16-Customer Satisfaction Performance by Payment Method(Payment,Branch,Product_line)
A
SELECT Payment,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Payment
order by Average_Rating asc;
B
SELECT Branch,Payment,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Branch,Payment
order by Branch asc;
C
SELECT Payment,Product_line,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Product_line,Payment
order by Payment asc;

#17-Customer Satisfaction Performance by Date (Date,Branch,Product_line)
A
SELECT Year,Month,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Year,Month
order by Month asc;
B
SELECT Branch,Year,Month,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Branch,Year,Month
order by Branch asc;
C
SELECT Year,Month,Product_line,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Year,Month,Product_line
order by Month asc;

#18-Customer Satisfaction Performance by Working hours(time,Branch)
A
SELECT hour,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY hour
order by hour asc;

B
SELECT hour,Branch,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY hour,Branch
order by hour asc;
C
SELECT hour,Product_line,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Product_line,hour
order by hour asc;

#### 19- Which branch have highest gross income , how and how can other branches do that?

##Q1- which branch have the highest gross income?
A
SELECT Branch,sum(gross_income) AS 'Total_Gross_income' from Supermarket_Cleaned
GROUP BY Branch
order by Total_Gross_income asc;
B
SELECT Product_line,Branch,sum(gross_income) AS 'Total_Gross_income' from Supermarket_Cleaned
GROUP BY Product_line,Branch
order by Product_line asc;
##Answer1 : mamoura branch is the highest gross income more than other branches.

## Q2: how the mamoura branch do that?
## Rating view
A
select Branch,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Branch
order by Average_Rating asc;

B
SELECT Product_line,Branch,Avg(Rating) AS 'Average_Rating' from Supermarket_Cleaned
GROUP BY Product_line,Branch
order by Average_Rating asc;


## Payment methods view
A
SELECT Product_line,Branch,Payment,SUM(gross_income) AS 'Total_gross_income' from Supermarket_Cleaned
GROUP BY Product_line,Branch,Payment
order by Total_gross_income asc;

##Demographics view
A
SELECT Gender,sum(gross_income) AS 'Total_gross_income' from Supermarket_Cleaned
GROUP BY Gender
order by Total_gross_income asc;
B
SELECT Gender,Branch,sum(gross_income) AS 'Total_gross_income' from Supermarket_Cleaned
GROUP BY Gender,Branch
order by Total_gross_income asc;
C
SELECT Gender,Product_line,sum(gross_income) AS 'Total_gross_income' from Supermarket_Cleaned
GROUP BY Gender,Product_line
order by Total_gross_income asc;
D
SELECT Gender,Branch,Product_line,sum(gross_income) AS 'Total_gross_income' from Supermarket_Cleaned
GROUP BY Gender,Branch,Product_line
order by Total_gross_income asc;