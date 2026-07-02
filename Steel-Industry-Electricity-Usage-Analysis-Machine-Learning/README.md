# ⚡ Steel Industry Electricity Usage Analysis (Machine Learning)

## 📌 Project Overview

This project analyzes electricity consumption patterns in the steel manufacturing industry using Machine Learning techniques. The objective is to identify the factors influencing electricity usage, uncover consumption patterns, and build predictive models that support efficient energy management and cost reduction.

The project covers the complete data science workflow, including data preprocessing, exploratory data analysis (EDA), statistical hypothesis testing, probability concepts, machine learning model development, and clustering analysis.

---

# 🎯 Problem Statement

The steel manufacturing industry is one of the largest consumers of electrical energy. Managing electricity consumption efficiently is essential for reducing operational costs and improving environmental sustainability.

This project analyzes hourly electricity usage across different load conditions, weekdays, weekends, and seasonal periods to identify key consumption patterns and develop predictive models for smarter energy management.

---

# 🎯 Objectives

- Analyze electricity usage patterns across different hours, days, and load conditions.
- Identify factors affecting electricity consumption.
- Compare weekday and weekend electricity usage.
- Prepare clean and structured data for machine learning.
- Validate business assumptions using statistical hypothesis testing.
- Apply probability concepts to analyze energy consumption patterns.
- Predict electricity usage using Linear Regression.
- Classify electricity load categories using Logistic Regression.
- Segment electricity consumption patterns using K-Means Clustering.
- Generate actionable insights for energy optimization.

---

# 🛠️ Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- SciPy
- Jupyter Notebook

---

# 📂 Dataset Information

**Dataset Source:** Kaggle

### Dataset Summary

- **Total Records:** 35,040
- **Features:** 15
- **Missing Values:** 0
- **Load Types:** 3 (Light Load, Medium Load, Maximum Load)
- **Time Period:** One full year of hourly electricity readings

---

# 🧹 Data Preprocessing

The following preprocessing steps were performed:

- Removed duplicate records
- Verified missing values
- Handled data types
- Feature engineering
- Encoded categorical variables
- Scaled numerical features
- Performed outlier analysis
- Prepared training and testing datasets

---

# 📊 Exploratory Data Analysis (EDA)

The analysis includes:

- Hourly electricity usage trends
- Daily and monthly consumption analysis
- Weekday vs Weekend comparison
- Load Type distribution
- Carbon emission (CO₂) analysis
- Power Factor analysis
- Correlation between variables
- Feature relationship visualization

---

# 📈 Statistical Analysis

### Hypothesis Testing

Performed statistical hypothesis testing to validate business assumptions regarding electricity usage across different operating conditions.

### Probability Analysis

Applied probability concepts to understand electricity consumption behaviour and event likelihood across different load conditions.

---

# 🤖 Machine Learning Models

## 📉 Linear Regression

Developed a regression model to predict electricity consumption (kWh).

### Evaluation Metrics

- Mean Absolute Error (MAE)
- Mean Squared Error (MSE)
- Root Mean Squared Error (RMSE)
- R² Score

---

## 📊 Logistic Regression

Built a classification model to predict electricity load categories.

### Load Categories

- Light Load
- Medium Load
- Maximum Load

### Evaluation Metrics

- Accuracy
- Precision
- Recall
- F1 Score
- Confusion Matrix

---

## 🎯 K-Means Clustering

Applied K-Means clustering to identify similar electricity consumption patterns.

### Purpose

- Energy usage segmentation
- Load pattern identification
- Operational grouping
- Business decision support

---

# 📈 Key Insights

- Electricity usage varies significantly across different hours of the day.
- Weekday and weekend consumption patterns differ.
- Power Factor has a strong relationship with electricity usage.
- Machine Learning models effectively predict electricity consumption.
- Clustering reveals distinct energy usage groups that can support operational planning.

---

# 📚 Python Libraries Used

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- SciPy

---

# 🚀 Future Enhancements

- Deploy the model using Streamlit or Flask.
- Build a real-time electricity monitoring dashboard.
- Integrate IoT sensor data.
- Improve prediction accuracy using Random Forest and XGBoost.
- Develop an end-to-end energy management system.

---

# 📌 Conclusion

This project demonstrates the complete machine learning lifecycle, from data preprocessing and exploratory analysis to statistical testing, predictive modeling, and clustering. The insights generated can help industries optimize electricity consumption, reduce operational costs, and support sustainable energy management through data-driven decision-making.
