SELECT
    [Row ID],
    [Order Priority],
    [Discount],
    [Unit Price],
    [Shipping Cost],
	[Order ID],
    [Customer ID],
    [Customer Name],
    [Ship Mode],
    [Customer Segment],
    [Product Category],
    [Product Sub-Category],
    [Product Container],
    [Product Name],
    [Product Base Margin],
    [Country],
    [Region],
    [State or Province],
    [City],
    [Postal Code],
	[Order Date],
    YEAR([Order Date]) AS OrderYear, -- Year of Order is determined
	MONTH([Order Date]) AS OrderMonth, -- Month of Order is determined
    [Ship Date],
    [Profit],
    SUM([Quantity ordered new]) AS TotalQuantitySold, --Total Quntity Sold is calculated
    [Total Sales Revenue] = SUM([Sales]), -- Total Sales revenue is calculated
    [Total Profit] = SUM([Profit]), -- Total Profit is calculated
    [Sales],
	AVG([Sales]) AS AverageSales, -- Average Sales is calculated
    [Revenue] = [Unit Price] * [Sales] -- Total Revenue is calculated
FROM [Superstore Sales Project].[dbo].[Orders]

GROUP BY  
    [Row ID],
    [Order Priority],
    [Discount],
    [Unit Price],
    [Shipping Cost],
    [Customer ID],
    [Customer Name],
    [Ship Mode],
    [Customer Segment],
    [Product Category],
    [Product Sub-Category],
    [Product Container],
    [Product Name],
    [Product Base Margin],
    [Country],
    [Region],
    [State or Province],
    [City],
    [Postal Code],
    [Order Date],
    [Ship Date],
    [Profit],
    [Quantity ordered new],
    [Order ID],
	[Sales]

	ORDER BY [Customer Segment],  AverageSales DESC , TotalQuantitySold DESC , OrderYear , OrderMonth -- Sorting is done using order by function
