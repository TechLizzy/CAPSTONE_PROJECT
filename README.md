# LITA_CAPSTONE_PROJECT

## PROJECT TITLES
1. Sales Performance Analysis for a Retail Store (SPA)
2. Customer Segmentation for a Subscription Service (CS)

## HEADING OUTLINE
[DATA SOURCE](#data-source)

[TOOLS USED](#tools-used)

[DATA CLEANING AND PREPARATIONS](#data-cleaning-and-preparations)

[PROJECT OVERVIEW FOR SPA](#project-overview-for-spa)

[PROJECT OVERVIEW FOR CS](#project-overview-for-cs)

[COLUMN DEFINITIONS FOR SPA](#column-definitions-for-spa)

[COLUMN DEFINITIONS FOR CS](#column-definitions-for-cs)

[EXPLORATORY DATA ANALYSIS](#exploratory-data-analysis)

[DATA ANALYSIS](#data-analysis)

[CONCLUSION FROM ANALYSIS](#conclusion-from-analysis)

## DATA SOURCE
The main data sources for this analysis are the "Data Sales.csv" and "Customer.csv" files, which are open-source datasets available for free download from online repositories like Kaggle, FRED, or any other data repository site.

## TOOLS USED
- Microsoft Excel
  1. For Data Cleaning
  2. For Analysis
  3. For Visualization
- SQL - Structured Query Language for querying of data
- GitHub for Portfolio Building

## DATA CLEANING AND PREPARATIONS
In the intial phase of Data Cleaning and Preparations, we perform the following action;
- Data loading and Inspection
- Handling missing variables
- Data Cleaning and Formatting

## PROJECT OVERVIEW FOR SPA
This project aims to uncover key insights including, but not limited to, top-selling products, regional performance, and monthly sales trends for the sales dataset obtained from a Retail Store. The dataset contains information about the customers such as their CustomerId, and region; and also about the sales which include OrderId, product, quantity and unit price.

## PROJECT OVERVIEW FOR CS
This project involves analyzing customer data for a subscription service to identify segments and trends. The goal is to understand customer behavior, track subscription types, and identify key trends in cancellations and renewals. The dataset contains customer information such as CustomerId, customer name and region; and subscription information such as subscription type, subscription start and end dates, cancelled subscriptions and revenue.

## COLUMN DEFINITIONS FOR SPA
- ORDERID: a unique identifier for an order that links all items in a transaction.
- CUSTOMERID: a unique number or alphanumeric identifier assigned to a customer by a company or organization.
- PRODUCT: specific good(s) purchsed by a customer.
- REGION: the geopolitical zone in which the order was placed.
- ORDERDATE: the date the order was placed.
- QUANTITY: the amount of products purchased by a customer.
- UNITPRICE: the price of each product as one item.

## COLUMN DEFINITIONS FOR CS
- CUSTOMERNAME: the name of each customer.
- CUSTOMERID: a unique number or alphanumeric identifier assigned to a customer by a company or organization.
- SUBSCRIPTIONTYPE: type of services offered to a customer or the level of subscription sent to subscribers.
- REGION: the geopolitical zone in which the order was placed.
- SUBSCRIPTIONSTART: the day a subscriber paid for the subscription.
- SUBSCRIPTIONEND: the day a subscriber ended the subscription.
- CANCELLED: if the subscriber cancelled their subscription at any time.
- REVENUE: the income generated from subscriptions.

## EXPLORATORY DATA ANALYSIS
Exploratory Data Analysis involved the exploratory of the Data to answer some questions about the data such as;
1. For SPA
   - Retrieve the total sales for each product category.
   - Find the number of sales transactions in each region.
   - Find the highest-selling product by total sales value.
   - Calculate total revenue per product.
   - Calculate monthly sales totals for the current year.
   - Find the top 5 customers by total purchase amount.
   - Calculate the percentage of total sales contributed by each region.
   - Identify products with no sales in the last quarter.
   - Use pivot tables to summarize total sales by product, region, and month.
   - Use Excel formulas to calculate metrics such as average sales per product and total revenue by region.
  
  2. For CS
     - Analyze customer data using pivot tables to find subscription patterns.
     - Calculate the average subscription duration and identify the most popular subscription types.
     - Retrieve the total number of customers from each region.
     - Find the most popular subscription type by the number of customers.
     - Find customers who canceled their subscription within 6 months.
     - Calculate the average subscription duration for all customers.
     - Find customers with subscriptions longer than 12 months.
     - Calculate total revenue by subscription type.
     - Find the top 3 regions by subscription cancellations.
     - Find the total number of active and canceled subscriptions.

## DATA ANALYSIS
Some basic lines of code or queries or even some of the DAX expressions used during analysis include:
```SQL
SELECT TOP 1 PRODUCT,
SUM (TOTAL_SALES) AS GRAND_TOTAL_SALES FROM SALESDATACSV
GROUP BY Product
```

```SQL
SELECT REGION, COUNT (CUSTOMERID) AS TOTAL_CUSTOMERS FROM CUSTOMERSDATA
GROUP BY REGION
```

## CONCLUSION FROM ANALYSIS
- SPA
Our comprehensive sales data analysis reveals compelling insights into customer preferences and shopping habits. The standout performer was shoes, with an impressive 14,402 units sold and a revenue of #613,380 made, solidifying its position as our top-selling product. In contrast, socks trailed behind with 7,921 units sold and a revenue of #180,785 made. Monthly sales patterns showed significant variations, with February emerging as the peak sales month. The first and second quarters witnessed robust sales, while the summer-to-fall transition led to a notable decline, culminating in a 50% drop in the fourth quarter. Geographic analysis highlighted the South as the leading sales region, accounting for 44% of total sales, followed by the East (23%), North (18%), and West (14%). Each region contributed uniquely to our overall success, demonstrating broad market appeal. Interestingly, higher-priced items outperformed expectations, suggesting customers prioritize quality and willingness to invest in premium products.
This data-driven analysis provides valuable insights to inform future business strategies, optimize product offerings, and enhance customer engagement. 

- CS
Our comprehensive customer data analysis has revealed valuable trends in subscription usage, highlighting the appeal of simplicity, affordability, and regional loyalty. The “Basic” plan emerged as the clear winner, accounting for over 50% of all subscriptions. This suggests that customers prioritize ease of use and cost-effectiveness. The average subscription duration stands at 365 days, indicating customers’ satisfaction and trust in our service. This steady yearly cycle demonstrates a strong foundation for long-term relationships. The East region exhibits exceptional loyalty, with zero cancellations on record. This standout performance underscores the importance of tailored regional strategies. Total subscription revenue reached an impressive #67,540,175, reflecting customers’ loyalty and perceived value.
These insights empower us to refine our subscription offerings, enhance customer satisfaction, and foster loyalty.
