# SQL Music Store Business Analysis

## Project Overview

This project uses the Chinook sample database to analyse customer distribution, invoice revenue and track sales using SQL and SQLite. It demonstrates how relational data can be queried and summarised to answer practical business questions.

## Business Questions

- Which countries generate the most invoice revenue?
- Which customers have the highest total invoice values?
- Which tracks generate the most revenue?
- How can SQL help summarise business performance?

## Tools Used

- SQLite
- DB Browser for SQLite
- SQL
- Apple Numbers
- GitHub

## Analysis

The SQL queries cover customer counts by country, invoice revenue by country, top customers by invoice value, and top tracks by sales revenue.

The project demonstrates SELECT statements, aggregate functions, JOIN operations, GROUP BY, ORDER BY and LIMIT.

## Initial Findings

- **Country revenue:** The United States ranked first in the country revenue results, with 523.06 across 91 invoices.
- **Customer spending:** Helena Holy appeared first in the top-customer results, with a total invoice value of 49.62.
- **Track revenue:** The Woman King appeared first in the top-track results, with revenue of 3.98.

These figures reflect the results obtained from the sample database and should be interpreted in that context.

## Visualisation

The project includes a chart of invoice revenue by country, saved in the `charts` folder.

## Limitations

This is a sample database rather than live commercial data. Invoice revenue is not profit, as costs have not been deducted. The initial findings are descriptive and do not establish why particular countries, customers or tracks perform differently.

## Project Files

- `sql/music_store_analysis.sql` — SQL analysis queries.
- `reports/business_insights_report.txt` — Written summary of findings.
- `reports/revenue_by_country.csv` — Country-level query results.
- `charts/revenue_by_country.png` — Revenue visualisation.

## Reproducibility

Download the Chinook SQLite sample database from the [official Chinook repository](https://github.com/lerocha/chinook-database). Open the database in DB Browser for SQLite, then run the queries in `sql/music_store_analysis.sql` to reproduce the analysis. The database file is not included in this repository.
