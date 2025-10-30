📘 Project Overview

This project demonstrates SQL-based data exploration and dependency analysis using a simulated Enterprise Resource Planning (ERP) database.
The dataset represents multiple ERP modules (e.g., HR, CRM, Finance, Purchasing) and their interdependencies.

The goal is to identify:
- Extract module name
- Calculate total table per module
- Identify the largest and most complex modules
- Identify cross-module dependencies

⚙️ Technical Stack
- Database: PostgreSQL
- Language: SQL
- Tools: pgAdmin, VS Code
- Dataset: Simulated ERP dependency dataset (CSV imported into PostgreSQL)

📊 Key SQL Queries & Insights
<img width="1539" height="544" alt="image" src="https://github.com/user-attachments/assets/e0676d61-4af3-490d-81fd-9b740ad01218" />

🧭 Key Findings
- 45 distinct modules were identified across the ERP dataset.
- HR module contains the highest number of tables and serves as a core module.
- The F5-Financial Reporting and M5-Analytics Modules show several cross-dependencies, indicating strong process integration.
- Most tables are categorized as “Normal” complexity, suggesting a well-structured ERP environment.
