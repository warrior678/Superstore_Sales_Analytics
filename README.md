# Regional_Sales_Analytics
A comprehensive sales data analysis project that explores the Superstore Sales dataset to uncover regional performance trends, product category insights, customer segment behavior, and shipping patterns across the United States using data analytics and visualization tools. 
# 🛒 Regional Sales — Superstore Sales Data Analysis

![Excel](https://img.shields.io/badge/Excel-Data%20Cleaning-217346?logo=microsoftexcel&logoColor=white)
![Python](https://img.shields.io/badge/Python-Pandas%20%7C%20Matplotlib-3776AB?logo=python&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![CSV](https://img.shields.io/badge/Data-CSV-217346?logo=microsoftexcel&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

A comprehensive sales data analysis project that explores the **Superstore Sales dataset** to uncover regional performance trends, product category insights, customer segment behavior, and shipping patterns across the United States using data analytics and visualization tools
 Project Overview
This project analyzes over **9,800 sales transactions** from a US-based superstore spanning **2015 to 2018** across four regions — East, West, Central, and South. The goal is to identify top-performing regions, product categories, and customer segments to support strategic sales decision-making.
 Project Objectives
- Analyze regional sales performance across the US (East, West, Central, South)
- Identify top-selling product categories and sub-categories
- Understand customer segment behavior (Consumer, Corporate, Home Office)
- Evaluate shipping mode efficiency and delivery patterns
- Build interactive dashboards for sales insights and trend analysis

 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Excel** | Data cleaning, formatting, and preprocessing |
| **Python** (Pandas, Matplotlib) | Data analysis and visualization |
| **Power BI** | Interactive dashboard and KPI visualization |
| **CSV** | Raw data source |
Repository Structure
Regional-Sales/
│
├── Superstore_sales.csv       # Raw Superstore sales dataset
├── Regional_Sales.ipynb       # Python analysis notebook (if applicable)
├── Regional_Sales.pbix        # Power BI dashboard file (if applicable)
└── README.md                  # Project documentation
 Dataset Description
The dataset contains **9,800+ sales records** from a US Superstore with the following fields:

| Field | Description |
|-------|-------------|
| Row ID | Unique row identifier |
| Order ID | Unique order identifier |
| Order Date | Date the order was placed |
| Ship Date | Date the order was shipped |
| Ship Mode | Shipping class (First Class, Second Class, Standard Class, Same Day) |
| Customer ID | Unique customer identifier |
| Customer Name | Name of the customer |
| Segment | Customer segment (Consumer, Corporate, Home Office) |
| Country | Country of the order (United States) |
| City | City of delivery |
| State | State of delivery |
| Postal Code | ZIP code of delivery |
| Region | Sales region (East, West, Central, South) |
| Product ID | Unique product identifier |
| Category | Product category (Furniture, Office Supplies, Technology) |
| Sub-Category | Product sub-category (Chairs, Phones, Binders, etc.) |
| Product Name | Full name of the product |
| Sales | Revenue generated from the order |

Key Performance Indicators (KPIs)

-  **Total Sales** — Overall revenue across all regions and years
-  **Sales by Region** — East vs West vs Central vs South performance
-  **Sales by Category** — Furniture vs Office Supplies vs Technology
-  **Sales by Customer Segment** — Consumer vs Corporate vs Home Office
-  **Sales by Sub-Category** — Top and bottom performing product lines
-  **Shipping Mode Distribution** — Most used shipping methods
-  **Year-over-Year Sales Trends** — 2015, 2016, 2017, 2018 comparison
-  **Top Cities & States** — Highest revenue-generating locations

 Project Workflow
1. Data Collection  →  Superstore_sales.csv (9,800+ records)
2. Data Cleaning    →  Handle nulls, format dates, standardize fields
3. Exploration      →  Regional, category, and segment-level analysis
4. Visualization    →  Charts, trends, and KPI dashboards
5. Insights         →  Actionable findings for sales strategy
 Key Insights
 **West and East** regions lead in total sales volume across all years
 **Technology** is the highest revenue-generating category
**Consumer segment** accounts for the majority of orders
 **Standard Class** is the most frequently used shipping mode
 Sales show a consistent **year-end spike** in Q4 each year

 Getting Started
 Prerequisites

Install Python dependencies:
```bash
pip install pandas matplotlib seaborn jupyter
```
 Running the Analysis
```bash
jupyter notebook Regional_Sales.ipynb
```
 Viewing the Dashboard
1. Download [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)
2. Open `Regional_Sales.pbix`
3. Use slicers to filter by Region, Category, Segment, or Year


 Project Outcome

This project demonstrates the ability to perform end-to-end sales data analysis — from raw CSV data to actionable business insights. It highlights skills in data cleaning, exploratory data analysis, and dashboard development, making it relevant for Data Analyst roles in retail, e-commerce, and business analytics.

 Author

**Gautam Kumar**
Data Analyst | Python | Power BI | Excel | SQL

- GitHub: [@warrior678](https://github.com/warrior678)


