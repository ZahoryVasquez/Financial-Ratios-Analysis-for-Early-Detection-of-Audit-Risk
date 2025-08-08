# 📊 Financial Ratios Analysis for Early Detection of Audit Risk 💼

## 🚀 Project Overview

This project analyzes a financial dataset to distinguish between **healthy companies** and those at risk of **bankruptcy** by exploring key financial ratios. The goal is to identify patterns in profitability, liquidity, solvency, and efficiency that correlate with financial stability or distress.

## 📂 Dataset

- **Source:** Taiwan Economic Journal (1999–2009)  
- **Obtained from:** [Kaggle - Company Bankruptcy Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/company-bankruptcy-prediction)  
- **Description:** Contains financial indicators per company, including a binary bankruptcy status label.  
- **Note:** The ratios were pre-calculated in the dataset; I selected the most relevant ones for this analysis.

## 🧰 Methodology

1. **Data Loading & Exploration**  
   Loaded the dataset and performed initial exploration to understand distributions and clean data.

2. **Selection of Key Financial Ratios**  
   Focused on four key ratios based on financial importance and data quality:  
   - 📈 **ROA (Return on Assets):** Profitability  
   - 💧 **Current Ratio:** Liquidity  
   - ⚖️ **Debt Ratio:** Solvency  
   - ⚙️ **Total Asset Turnover:** Efficiency  

   These were extracted into a new DataFrame along with bankruptcy status for targeted analysis.

3. **Exploratory Data Analysis (EDA) & Visualization**  
   - Created scatterplots showing liquidity vs. efficiency by bankruptcy status.  
   - Summarized distributions to highlight differences between healthy and bankrupt firms.

4. **Interpretation & Conclusion💡**  
   - Healthy companies tend to have higher profitability and liquidity, lower debt, and better asset use.  
   - Bankrupt companies cluster in low liquidity and efficiency zones and carry higher leverage.  
   - These insights support early detection of bankruptcy risk, aiding auditors and analysts.

## 🛠 Tools & Techniques
- **Python** (Pandas, NumPy, Matplotlib, Seaborn)  
- **Jupyter Notebook**  
- **Statistical Analysis** for ratio interpretation  
- **Kaggle Dataset** integration  

## 💻 Code Structure & Comments

- Modular code with descriptive comments for clarity.  
- Ratio selection clearly documented near the start of the analysis.  
- Concise labels in plots, assuming a financially literate audience, to keep visuals clean and informative.

## 🔧 How to Use

- Run the notebook or script step-by-step to reproduce results.  
- Easily modify selected ratios in the data prep step by changing the column list.  
- Extend the project with predictive modeling or deeper financial analysis as desired.

---

## 🙋🏽‍♀️ About Me

**Rocío Zahory Vásquez Romero**  
- Senior Auditor | Data Science & Machine Learning Enthusiast 
- Email: rocio.vasquez@usach.cl
- LinkedIn: https://www.linkedin.com/in/rocio-zahory-vasquez-romero-3621ab1a7/

---

*This project provides valuable insights into financial health metrics and supports more effective risk assessment across industries.*


