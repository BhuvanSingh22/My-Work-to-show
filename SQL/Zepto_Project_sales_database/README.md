**📦 Zepto SQL Data Analysis Project**

📌 Project Overview

An end-to-end SQL analysis of Zepto’s product and inventory data to understand pricing behavior, discount patterns, stock availability, and revenue potential across product categories.

🗂️ Data Preparation & Cleaning

- Designed and created a structured SQL table to store product-level data from a CSV file
- Performed data validation checks for NULL values across all critical columns
- Identified duplicate product names associated with multiple SKUs
- Removed products with invalid pricing (MRP = 0)
- Standardized pricing by converting values from paise to rupees
  

🔍 Exploratory & Business Analysis

- Analyzed in-stock vs out-of-stock product distribution
- Identified top products offering the highest discounts
- Flagged high-MRP products that were currently out of stock
- Estimated potential revenue for each product category using price × quantity
- Filtered expensive products with minimal discounts
- Ranked categories based on average discount offered

  
📊 Advanced Analysis

- Calculated price per gram to identify best-value products
- Grouped products into Low, Medium, and Bulk weight categories
- Computed total inventory weight per category to assess stock volume


✅ Key Conclusions

- Revenue contribution is concentrated in a limited number of categories
- Several high-value products face stock availability issues
- Discount strategies vary significantly across categories
- Price-per-gram analysis reveals hidden value opportunities


🛠️ Skills & Tools

- SQL (DDL, DML, Joins, Aggregations, CASE statements)
- Data Cleaning & Validation
- Retail Pricing & Inventory Analysis
