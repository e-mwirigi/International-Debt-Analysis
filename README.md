# International-Debt-Analysis
## Project Overview
This project explores and analyzes International Debt data of developing countries, sourced from the World Bank.  The objective is to explore provided dataset using SQL in PostgreSQL, extract meaningful insights and answer key financial questions.
## Structure
1. Data - Raw data is sourced from file international_debt_with_missing_values.csv, imported into PostgreSQL through DBeaver, loaded into international_debt_with_missing_values table, contained in the evening_class schema.
2. SQL Queries - The analysis SQL Queries are contained in debt_analysis_queries.sql file.
## Findings
1. Total amount of debt owed by all countries: **USD 2,823,894,600,000**.
2. Number of distinct countries are recorded in the database: **124 (null values and empty spaces ignored)**.
3. Distinct types of debt indicators, and what they represent:
   - Principal repayments on external debt, private nonguaranteed - Actual amounts of principal paid by private entities to foreign creditors in a given year.
   - PPG, bonds (INT, current US$) - Publicly and Public guaranteed debt from bonds.
   - Interest payments on external debt, long-term (INT, current US$) - Total amount of interest paid by a country pays annually on its long-term external debt obligations.
   - PPG, multilateral (INT, current US$) - Interest payments on public and publicly guaranteed external debt owed to multilateral institutions.
   - PPG, commercial banks (AMT, current US$) - Amortization payments on public and publicly guaranteed debt owed to commercial banks.
   - PPG, official creditors (AMT, current US$) - Principal repayments on public and publicly guaranteed external debt, specifically those owed to official creditors.
   - PPG, bonds (AMT, current US$) - Principal repayments on external debt, public and publicly guaranteed, from bonds.
   - Interest payments on external debt, private nonguaranteed (PNG) (INT, current US$) - Actual amounts of interest paid by private entities (not guaranteed by a public entity) on their external debt obligations.
   - PPG, bilateral (AMT, current US$) - Principal repayments on public and publicly guaranteed long-term external debt, specifically those with bilateral creditors.
   - PPG, private creditors (INT, current US$) - Public and publicly guaranteed debt owed to private creditors, specifically the interest payments.
   - PPG, other private creditors (DIS, current US$) – The amount of money disbursed from loans and credit lines to public and publicly guaranteed entities, where the creditors are private entities.
   - PPG, official creditors (INT, current US$) - Public and publicly guaranteed debt from international organizations.
   - Disbursements on external debt, long-term (DIS, current US$) – The actual amount of money that a country receives as loans with a maturity of more than one year (long-term) from external sources.
   - PPG, multilateral (DIS, current US$) - Disbursements of public and publicly guaranteed external debt from multilateral sources.
   - PPG, bilateral (INT, current US$) - Interest payments on public and publicly guaranteed debt, specifically those made to bilateral creditors.
   - PPG, official creditors (DIS, current US$) - Public and publicly guaranteed debt disbursed and outstanding from official creditors.
   - Principal repayments on external debt, long-term (AMT, current US$) - Actual amount of principal that a country pays back to foreign creditors on its long-term external debt within a specific year.
   - PPG, bilateral (DIS, current US$) - Public and publicly guaranteed debt, specifically bilateral loans (from one government to another), disbursed.
   - PPG, private creditors (AMT, current US$) - Debt owed to private lenders that is either directly issued by public entities or is guaranteed by a public entity.
   - PPG, commercial banks (DIS, current US$) - Disbursements of public and publicly guaranteed debt from commercial banks.
   - PPG, other private creditors (INT, current US$) - Interest payments on public and publicly guaranteed external debt owed to private creditors.
   - PPG, multilateral (AMT, current US$) - Principal repayments on external debt, public and publicly guaranteed, made to multilateral institutions.
   - PPG, commercial banks (INT, current US$) - Public and publicly guaranteed debt from commercial banks, specifically focusing on net flows.
   - PPG, private creditors (DIS, current US$) - Disbursements of public and publicly guaranteed debt from private creditors, measured in current US dollars.
   - PPG, other private creditors (AMT, current US$) - Principal payments made on public and publicly guaranteed debt owed to various private creditors.
4. Country with the highest total debt and how much it owes: China, **USD 266,455,760,000**.
5. Average debt across different debt indicators:
   
  | No. | Indicator Name | Average Debt (USD) |
  | --- | -------------- | ------------ |
  | 1 | Principal repayments on external debt, long-term (AMT, current US$) | 6385102887.177184 |
  | 2 | Principal repayments on external debt, private nonguaranteed (PNG) (AMT, current US$) |	5617528387.785466 |
| 3 | Disbursements on external debt, long-term (DIS, current US$) | 1952507090.1727273 |
| 4 | PPG, private creditors (AMT, current US$)	| 1813818513.165587 |
| 5 | Interest payments on external debt, long-term (INT, current US$) | 1466122955.496287 |
| 6 | PPG, bonds (AMT, current US$) | 1414863557.1479592 |
| 7 | PPG, official creditors (DIS, current US$) | 1351457466.1052632 |
| 8 | PPG, official creditors (AMT, current US$) | 1274168401.2139423 |
| 9 | PPG, bilateral (DIS, current US$) | 1125436968.0428574 |
| 10 | PPG, other private creditors (AMT, current US$) | 884860496.6477431 |
| 11 | PPG, multilateral (DIS, current US$)	| 838769987.1021506 |
| 12 | PPG, bonds (INT, current US$) | 834951106.7052951 |
| 13 | PPG, commercial banks (AMT, current US$) | 805805043.9498488 |
| 14 | PPG, private creditors (INT, current US$)	| 744083352.2397337 |
| 15 | Interest payments on external debt, private nonguaranteed (PNG) (INT, current US$) |	717492052.7281746 |
| 16 | PPG, bilateral (AMT, current US$)	| 597027169.620087 |
| 17 | PPG, multilateral (AMT, current US$)	| 547859195.5535715 |
| 18 | PPG, official creditors (INT, current US$)	| 321224580.57375 |
| 19 | PPG, private creditors (DIS, current US$)	| 303359589.2244318 |
| 20 | PPG, commercial banks (DIS, current US$)	| 271701783.9847561 |
| 21 | PPG, commercial banks (INT, current US$)	| 177040112.0222447 |
| 22 | PPG, bilateral (INT, current US$)	| 134041574.36760753 |
| 23 | PPG, multilateral (INT, current US$)	| 131281505.21572581 |
| 24 | PG, other private creditors (DIS, current US$)	| 92727243.40364583 |
| 25 |PPG, other private creditors (INT, current US$)	| 5691548.604166667 |
6. Country that has made the highest amount of principal repayments: China, **USD 168,611,610,000**.
7. Most common debt indicator across all countries: **PPG, official creditors (INT, current US$) – with 116 occurencies**.



