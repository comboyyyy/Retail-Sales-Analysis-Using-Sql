# 🛍️ Retail Sales Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing retail sales data using SQL to uncover customer purchasing behavior, product performance, and revenue trends. The objective was to transform raw transactional data into actionable business insights that can support strategic decision-making in a retail environment.

Through a series of SQL queries, this analysis explores customer demographics, category-wise sales performance, high-value transactions, and purchasing patterns.

---

## 🎯 Business Objective

The primary objectives of this project were to:

* Analyze sales performance across product categories.
* Identify high-value transactions and revenue drivers.
* Understand customer demographics and purchasing behavior.
* Discover opportunities for targeted marketing initiatives.
* Generate actionable insights to improve business performance.

---

## 🗂️ Dataset Information

The dataset contains retail transactions from a multi-category retail store.

### Dataset Features

| Column Name    | Description                            |
| -------------- | -------------------------------------- |
| transaction_id | Unique identifier for each transaction |
| sale_date      | Date of transaction                    |
| sale_time      | Time of transaction                    |
| customer_id    | Unique customer identifier             |
| gender         | Customer gender                        |
| age            | Customer age                           |
| category       | Product category                       |
| quantity       | Quantity purchased                     |
| price_per_unit | Unit selling price                     |
| cogs           | Cost of Goods Sold                     |
| total_sale     | Total transaction value                |

---

## 🛠️ Tools & Technologies Used

* **SQL Dialect:** MySQL
* **Version Control:** Git & GitHub
* **Methodologies:** Relational Database Concepts, Exploratory Data Analysis (EDA)

---

## 📊 Business Questions Solved

### Data Exploration
* Total number of transactions.
* Unique customer count.
* Product categories available.
* Missing value identification.

### Sales Analysis
* Clothing transactions during November.
* Category-wise revenue generation.
* Identification of high-value transactions.

### Customer Analysis
* Average age of Beauty category customers.
* Customer purchasing behavior by category.
* Revenue contribution insights.

### Revenue Analysis
* Transactions with sales exceeding ₹1,000.
* Identification of major revenue contributors.

---

# 🔍 Key Findings

## 1. Category Performance Analysis

Electronics generated the highest revenue, contributing **₹311,445** through **678 transactions**.

| Category    | Total Sales | Transactions |
| ----------- | ----------: | -----------: |
| Electronics |    ₹311,445 |          678 |
| Clothing    |    ₹309,995 |          698 |
| Beauty      |    ₹286,790 |          611 |

> **💡 Core Insight:** Although Electronics generated the highest revenue, Clothing recorded the highest number of transactions, indicating strong customer demand.
> 
> **🎯 Business Recommendation:** Prioritize Electronics inventory while leveraging Clothing for promotional campaigns and customer engagement initiatives.

---

## 2. Customer Demographic Insights

The average age of customers purchasing Beauty products was:

### 👤 Average Age: 40 Years

> **💡 Core Insight:** Beauty products primarily appeal to middle-aged consumers.
> 
> **🎯 Business Recommendation:** Develop personalized marketing campaigns targeting consumers in this age demographic.

---

## 3. High-Value Transaction Analysis

Several transactions exceeded **₹1,000**, with values ranging between ₹1,200 and ₹2,000.

> **💡 Core Insight:** A small segment of customers contributes significantly to overall revenue.
> 
> **🎯 Business Recommendation:** Introduce loyalty programs, exclusive offers, and premium memberships to retain high-value customers.

---

## 4. Seasonal Purchase Trends

Clothing purchases showed notable activity during November.

> **💡 Core Insight:** Seasonal demand influences purchasing behavior.
> 
> **🎯 Business Recommendation:** Plan festive promotions and optimize stock availability during peak seasonal periods.

---

# 📈 Business Impact

This analysis demonstrates how SQL can be used to generate meaningful insights that support business decisions.

The findings can help organizations:
* Improve inventory planning.
* Identify revenue-generating categories.
* Understand customer demographics.
* Increase customer retention.
* Optimize promotional strategies.
* Support data-driven decision-making.

---

## 💡 Skills Demonstrated

* Data Cleaning
* Data Exploration
* Aggregate Functions
* GROUP BY Analysis
* Filtering & Conditional Logic
* Business Insight Generation
* Analytical Thinking
* SQL Query Optimization
* Problem Solving

---
