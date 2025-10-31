

---

# 🧾 HR Data Analysis Project

## 📘 Overview

This project focuses on analyzing employee-related data from an HR department using **MySQL**.
The goal is to understand key human-resource metrics such as total employees, attrition rate, salary levels, department structure, and demographic distribution.

The project uses a structured HR dataset containing employee details like personal information, job data, performance, and compensation. Through various SQL operations, the data is cleaned, transformed, and analyzed to extract meaningful insights that support HR decision-making.

---

## 🎯 Objectives

* To organize employee data in a relational database.
* To calculate important HR metrics such as average salary, age, and tenure.
* To identify current versus former employees.
* To study attrition trends and reasons for employee turnover.
* To analyze employee distribution across departments, managers, and positions.
* To classify employees by salary and age groups for deeper understanding.

---

## 🗂️ Dataset Description

The dataset represents employee records and includes the following categories of information:

* **Personal Information:** Employee ID, Name, Gender, Date of Birth, Marital Status, and State.
* **Employment Information:** Department, Position, Manager Name, Hire Date, and Termination Date.
* **Compensation Data:** Salary and Pay Details.
* **Performance Data:** Review Dates and Performance Scores.
* **Termination Details:** Reasons and Dates of Exit (if applicable).

---

## ⚙️ Data Preparation and Cleaning

Before analysis, the data is cleaned and standardized to ensure accuracy:

* Missing or blank termination dates are replaced with “Currently Working.”
* Text-based date fields are converted into proper date formats.
* The salary field is converted into a numeric decimal format.
* An additional column is created to indicate whether an employee is active or has left the company.

These steps ensure that the dataset is uniform and reliable for analysis.

---

## 📊 Analysis Performed

### 1. Employee Statistics

Basic information such as total employees, current employees, and employees who have left the company is determined.
Average salary, average age, and average years of service are calculated to understand workforce characteristics.

### 2. Attrition Analysis

By identifying employees who have left, the attrition rate (percentage of employees leaving compared to total employees) is measured. This helps evaluate staff retention and turnover.

### 3. Department and Manager Insights

The workforce is grouped by department and manager to understand team sizes and reporting structures. This allows HR to see which areas have higher or lower headcounts.

### 4. Salary Distribution

Employees are categorized into salary ranges (for example, below 30K, 30K–50K, 50K–70K, etc.) to analyze compensation patterns across the organization.

### 5. Performance Analysis

Performance scores are summarized to evaluate how employees perform overall and to identify areas for improvement.

### 6. Demographic Insights

Analysis by gender, state, and marital status provides an overview of workforce diversity and demographic balance.

### 7. Age Group Segmentation

Employee ages are calculated from their birth dates and grouped into age brackets to study the age composition of the organization.

---

## 🧮 Key Metrics

| Metric                        | Description                                   |
| ----------------------------- | --------------------------------------------- |
| **Total Employees**           | Number of records in the dataset              |
| **Current Employees**         | Employees still working in the company        |
| **Old Employees**             | Employees who have left                       |
| **Attrition Rate**            | Percentage of employees who left              |
| **Average Salary**            | Mean value of employee salaries               |
| **Average Age**               | Mean employee age                             |
| **Average Tenure**            | Average number of years employees have worked |
| **Salary Range Distribution** | Grouping of employees by pay scale            |
| **Age Group Distribution**    | Grouping of employees by age range            |

---

## 🧰 Tools & Technologies

* **Database:** MySQL
* **Data Source:** HR Employee CSV File
* **Platform:** MySQL Workbench or any SQL execution tool
* **Analysis Type:** Descriptive Data Analysis using SQL

---

## 📈 Insights Derived

* The company’s total and active workforce structure.
* The rate and reasons for employee attrition.
* Department-wise and manager-wise employee distribution.
* Salary and age segmentation trends.
* Gender and state-wise diversity within the organization.
* Performance distribution patterns.

---

## 🚀 Outcomes

The analysis provides HR teams with a data-driven understanding of:

* Workforce composition and diversity.
* Employee retention challenges.
* Salary balance across roles and departments.
* Employee age and experience demographics.
* Organizational areas requiring strategic HR focus.

---

## 📌 Future Scope

* Integration of this analysis into visualization dashboards (Power BI or Tableau).
* Predictive modeling to forecast attrition or performance.
* Linking data with payroll and attendance systems for real-time analytics.

---



Would you like me to turn this into a **ready-to-upload `README.md` file** (formatted Markdown)?

