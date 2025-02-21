# Pizza-Sales-Analysis-
🍕 Pizza Sales Analysis with SQL & Power BI

📌 Project Overview
    This project analyzes pizza sales data using SQL and visualizes key insights with Power BI.
    It includes various KPIs (Key Performance Indicators), sales trends, and performance analysis of different pizza 
    categories, sizes, and names.

🎯 Objectives
 =>   Calculate total revenue, total pizzas sold, and total orders,
 =>  Determine average order value and average pizzas per order,
 =>  Identify top-performing and least-performing pizzas by revenue, quantity, and orders,
 =>  Analyze daily and monthly sales trends,
 =>  Compute percentage sales contribution by pizza category and size.


   🗄 Dataset
The dataset contains pizza sales records, including:

=> Order Date
=> Order ID
=> Pizza Name
=> Pizza Category
=> Pizza Size
=> Quantity Sold
=> Total Price

📊 SQL Queries & Analysis
The analysis is done using PostgreSQL (pgAdmin) with queries that cover:

1️⃣ Key Performance Indicators (KPIs)

=> Total Revenue
=> Total Orders
=> Total Pizzas Sold
=> Average Order Value
=> Average Pizzas per Order

2️⃣ Sales Trends

=> Daily Orders Trend (to_char(order_date, 'Dy'))
=> Monthly Orders Trend (extract(month from order_date))

3️⃣ Sales Breakdown

=> Percentage of Sales by Pizza Category
=> Percentage of Sales by Pizza Size
=> Total Pizzas Sold by Categor

4️⃣ Top & Bottom Performers

=> Top 5 & Bottom 5 Pizzas by Revenue
=> Top 5 & Bottom 5 Pizzas by Quantity Sold
=> Top 5 & Bottom 5 Pizzas by Total Orders

📊 Power BI Dashboard
The SQL-extracted data is visualized in Power BI, providing:

=> Revenue Breakdown by pizza category & size
=> Sales Trends (Daily & Monthly)
=> Best-Selling Pizzas
=> Underperforming Pizzas
=> Overall Sales Insights

🚀 How to Use
=> Run the SQL queries in pgAdmin (PostgreSQL).
=> Export the results to Power BI for visualization.
=> Explore insights using the interactive dashboard.

🔥 Key Takeaways
=> The best-selling pizza category generates the highest revenue.
=> Seasonal trends affect pizza sales, with peak orders in certain months.
=> Smaller pizzas may sell in high quantities but generate lower revenue.
=> The lowest-performing pizzas can be targeted for promotions or removal.

🔗 Future Improvements
=> Incorporate customer demographics for targeted insights.
=> Implement predictive analytics for future sales trends.
=> Optimize menu pricing based on sales performance.

     
