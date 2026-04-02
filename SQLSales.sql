USE Superstore 
SELECT * FROM [dbo].[Superstore sales] 

-- Write a query to find total sales by Region 
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[Superstore sales]
GROUP BY Region
ORDER BY Total_Sales DESC; 

-- Write a query to find total sales by category 
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(*)             AS Total_Orders
FROM [dbo].[Superstore sales]
GROUP BY Category
ORDER BY Total_Sales DESC; 

-- Write a query to find sales by customer segment 
SELECT 
    Segment,
    ROUND(SUM(Sales), 2)  AS Total_Sales,
    ROUND(AVG(Sales), 2)  AS Avg_Sales,
    COUNT(*)              AS Total_Orders
FROM [dbo].[Superstore sales]
GROUP BY Segment
ORDER BY Total_Sales DESC; 

-- Write a query to find TOP 10 Cities by sales 
SELECT TOP 10
    City,
    State,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM [dbo].[Superstore sales]
GROUP BY City, State
ORDER BY Total_Sales DESC; 

-- Write a SQL query to find year-wise sale 
SELECT 
    YEAR([Order_Date])   AS Order_Year,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(*)             AS Total_Orders
FROM [dbo].[Superstore sales]
GROUP BY YEAR([Order_Date])
ORDER BY Order_Year ASC; 

-- Write a query to find Sales by Ship-Mode 
SELECT 
    [Ship_Mode],
    COUNT(*)             AS Total_Shipments,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(AVG(Sales), 2) AS Avg_Sales
FROM [dbo].[Superstore sales]
GROUP BY [Ship_Mode]
ORDER BY Total_Sales DESC; 

-- Write a query for Join Superstore Sales with Region_Segment (JOIN) 
SELECT 
    s.[Order_ID],
    s.[Customer_Name],
    s.Region,
    s.Segment,
    s.Category,
    ROUND(s.Sales, 2) AS Sales,
    r.Segment         AS Segment_Group
FROM [dbo].[Superstore sales] s
JOIN [dbo].[Region_Segment] r
    ON s.Region = r.Region AND s.Segment = r.Segment
ORDER BY s.Sales DESC; 

-- Write a Total Sales per Region and Segment (JOIN + GROUP BY) 
SELECT 
    s.Region,
    s.Segment,
    ROUND(SUM(s.Sales), 2) AS Total_Sales,
    COUNT(*)                AS Total_Orders
FROM [dbo].[Superstore sales] s
JOIN [dbo].[Region_Segment] r
    ON s.Region = r.Region AND s.Segment = r.Segment
GROUP BY s.Region, s.Segment
ORDER BY s.Region, Total_Sales DESC; 

--  Write a Sql query to find Customers Who Spent More Than Average (Subquery) 
SELECT 
    [Customer_Name],
    Region,
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Spent
FROM [dbo].[Superstore sales]
GROUP BY [Customer_Name], Region, Segment
HAVING SUM(Sales) > (
    SELECT AVG(Total_Sales)
    FROM (
        SELECT SUM(Sales) AS Total_Sales
        FROM [dbo].[Superstore sales]
        GROUP BY [Customer_Name]
    ) AS Avg_Table
)
ORDER BY Total_Spent DESC; 

-- Running Total of Sales by Order Date (WINDOW FUNCTION) 
SELECT 
    [Order_Date],
    [Order_ID],
    [Customer_Name],
    ROUND(Sales, 2) AS Sales,
    ROUND(SUM(Sales) OVER (ORDER BY [Order_Date] 
          ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW), 2) AS Running_Total
FROM [dbo].[Superstore sales]
ORDER BY [Order_Date]; 
-- Rank Customers by Total Sales (WINDOW FUNCTION — RANK) 
SELECT 
    [Customer_Name],
    Region,
    ROUND(SUM(Sales), 2)                             AS Total_Sales,
    RANK() OVER (ORDER BY SUM(Sales) DESC)           AS Sales_Rank,
    DENSE_RANK() OVER (ORDER BY SUM(Sales) DESC)     AS Dense_Rank
FROM [dbo].[Superstore sales]
GROUP BY [Customer_Name], Region
ORDER BY Sales_Rank;
