# Customer_Behavior_Analysis
Customer Shopping Behavior Analysis A complete data analytics project using Python, PostgreSQL, and Power BI to understand customer purchasing patterns across 3,900 retail transactions. Includes data cleaning, feature engineering, SQL-based business analysis, and an interactive dashboard with actionable insights to support strategic decision-making


# 🛒 Customer Shopping Behavior Analysis  
A complete end-to-end data analytics project analyzing **3,900+ retail transactions** to uncover insights into customer purchasing behavior, spending patterns, product preferences, and subscription trends.  
Built using **Python, PostgreSQL, and Power BI**.

---

## 📌 Project Objectives
- Clean and preprocess raw shopping transaction data  
- Perform exploratory data analysis (EDA) in Python  
- Conduct structured business analysis using SQL  
- Build an interactive dashboard in Power BI  
- Generate actionable business insights for decision-making  

---

## 🛠️ Tools & Technologies
| Purpose | Tools |
|--------|-------|
| Data Cleaning & EDA | Python (Pandas, NumPy) |
| Database & Queries | PostgreSQL |
| Visualization | Power BI |
| Feature Engineering | Python |

---

## 🧹 Data Preprocessing & Feature Engineering (Python)
Key steps performed:

### ✔ Data Preparation  
- Loaded dataset using pandas  
- Inspected structure using `df.info()` and `df.describe()`  

### ✔ Handling Missing Data  
- Detected null values  
- Imputed missing `review_rating` using **median per product category**  

### ✔ Standardization  
- Renamed columns to **snake_case** for readability  

### ✔ Feature Engineering  
- Created `age_group` using age bins  
- Derived `purchase_frequency_days`  
- Dropped redundant `promo_code_used` after consistency check  

### ✔ Database Integration  
- Connected Python to **PostgreSQL**  
- Loaded cleaned dataset into a structured table for SQL analysis  

---

## 📊 SQL-Based Business Analysis
Using PostgreSQL, the following business questions were answered:

1. **Revenue by Gender**  
2. **High-Spending Discount Users**  
3. **Top 5 Products by Average Rating**  
4. **Standard vs Express Shipping – Purchase Comparison**  
5. **Subscribers vs Non-Subscribers – Revenue & Average Spend**  
6. **Products Most Dependent on Discounts**  
7. **Customer Segmentation: New vs Returning vs Loyal**  
8. **Top 3 Most Purchased Products per Category**  
9. **Correlation Between Repeat Purchases & Subscription**  
10. **Revenue Contribution by Age Group**  

---

## 📈 Power BI Dashboard
An interactive dashboard was created showcasing:

- Category-wise & age-group revenue  
- Subscription vs non-subscription behavior  
- Shipping-type trends  
- Discount influence  
- Top-rated & top-selling products  
- Customer segmentation distribution  

---

## 🧠 Business Insights & Recommendations

### ✔ Boost Subscriptions  
Highlight exclusive benefits and create targeted campaigns.

### ✔ Strengthen Customer Loyalty Programs  
Reward high-frequency buyers to convert them into loyal customers.

### ✔ Review Discount Strategy  
Balance discount usage with profit margins.

### ✔ Tactical Product Promotion  
Promote high-rated and frequently purchased items in ads.

### ✔ Targeted Marketing  
Focus on express shipping users and high-revenue age groups.

---

## 📁 Project Structure
