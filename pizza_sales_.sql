1.	Total Revenue:

select sum(total_price) as total_revenue 
 from pizza_sales

-- 2. Average Order Value

select round(sum(total_price) / count(distinct order_id),2) as average_order_value from pizza_sales

-- 3. Total Pizzas Sold

select sum(quantity) as total_pizza_sold from pizza_sales

-- 4. Total Orders

 select count(distinct order_id) as total_orders 
   from pizza_sales

-- 5. Average Pizzas Per Order

select cast(cast(sum(quantity) as decimal (10,2)) /
   (select cast(count(distinct order_id) as decimal (10,2)) from pizza_sales) as decimal (10,2)) 
     as avg_pizza_per_order
      from pizza_sales

-- Daily Trend for Total Orders

select to_char(order_date,'Dy') as Day_name,
   count(distinct order_id) as order_count
    from pizza_sales
     group by day_name

-- Monthly Trend for Orders

 select extract(month from order_date) as month, to_char(order_date,'Month') as month_name,
   count(distinct order_id) 
    from pizza_sales
     group by month, month_name
       order by month

--  % of Sales by Pizza Category

select pizza_category,round(sum(total_price),2)as total_revenue, round((sum(total_price) / 
  (select sum(total_price) from pizza_sales) * 100),2) as total_percentage 
    from pizza_sales
      group by pizza_category



-- % of Sales by Pizza Size

select pizza_size,round(sum(total_price),2)as total_revenue,
  round((sum(total_price)/ (select sum(total_price) from pizza_sales)* 100),2) as total_percentage
   from pizza_sales
    group by pizza_size
     order by total_percentage desc
	 
-- Total Pizzas Sold by Pizza Category

select pizza_category , sum(quantity) as total_quantity_sold
   from pizza_sales
     group by pizza_category 
       order by total_quantity_sold

--  Top 5 Pizzas by Revenue

select pizza_name , sum(total_price) as total_revenue from pizza_sales
    group by pizza_name
     order by total_revenue desc
       limit 5

--  Bottom 5 Pizzas by Revenue

select pizza_name , sum(total_price) as total_revenue from pizza_sales 
   group by pizza_name 
      order by total_revenue asc
       limit 5


-- Top 5 Pizzas by Quantity

select pizza_name , sum(quantity) as total_quantity_sold 
   from pizza_sales
      by pizza_name 
       order by total_quantity_sold desc
         limit 5

--  Bottom 5 Pizzas by Quantity

select pizza_name, sum(quantity) as total_quantity_sold
  from pizza_sales
    group by pizza_name
     order by total_quantity_sold asc
      limit 5

--  Top 5 Pizzas by Total Orders

select pizza_name, count(distinct order_id) as total_quantity_sold from pizza_sales
  group by pizza_name 
    order by 2 desc
     limit 5

 -- Borrom 5 Pizzas by Total Orders

 select pizza_name, count(distinct order_id) as total_quantity_sold from pizza_sales
    group by pizza_name 
       order by 2 asc
          limit 5



