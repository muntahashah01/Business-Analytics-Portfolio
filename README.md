# Online Retail Business Analytics

## Project Overview

This project analyses historical online retail transactions to understand
sales performance, product performance, and international markets.

Python and pandas were used to inspect, clean, analyse, and summarise the data.
The project also includes visualisations and a written business insights report.

## Business Questions

- What does overall sales performance look like?
- How does sales value change from month to month?
- Which merchandise products generate the highest recorded sales?
- Which international markets generate the highest sales value?
- What data-quality issues should be considered when interpreting the results?

## Dataset

The dataset contains historical transactions from an online retailer,
covering 1 December 2010 to 9 December 2011.

The original dataset contains 541,909 rows and eight columns.

The analysis uses the following fields:

- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

## Tools Used

- Python
- pandas
- Matplotlib
- Jupyter Notebook

## Data Preparation

The preparation process included:

1. Inspecting the dataset and checking missing values.
2. Removing 5,268 exact duplicate rows.
3. Excluding invoices whose invoice number begins with `C`.
4. Excluding transactions with non-positive quantities.
5. Excluding transactions with non-positive unit prices.
6. Creating a `Revenue` field using `Quantity * UnitPrice`.
7. Retaining missing customer IDs for overall sales analysis.

The resulting analytical dataset contains 524,878 rows.

These are analytical filtering decisions, not proof that every excluded
record was invalid. Excluded records may include returns, adjustments,
or other non-standard transactions.

## Key Findings

- Total sales value in the cleaned dataset: £10,642,110.80.
- Total quantity sold: 5,572,420.
- Unique invoices: 19,960.
- Average sales value per invoice: £533.17.
- November 2011 was the strongest full month by sales value, at £1,503,866.78.
- The United Kingdom accounted for approximately 84.6% of cleaned sales value.
- The Netherlands was the highest-sales market outside the United Kingdom,
  with £285,446.34 in recorded sales.

The average sales value per invoice is calculated by dividing total sales
value by the number of unique invoices. Sales value is not profit.

## Visualisations

The project includes three charts:

- Monthly sales trend
- Top merchandise products by sales
- Top international markets by sales

## Limitations

- Approximately 25.18% of rows in the cleaned dataset have no CustomerID.
- December 2011 is incomplete because the data ends on 9 December.
- The data is historical and does not represent current retail performance.
- Product costs and operating expenses are unavailable, so profit cannot be calculated.
- An unusually large single transaction for `PAPER CRAFT , LITTLE BIRDIE`
  was retained and flagged for further investigation.
- Some stock codes may represent postage, manual entries, or special charges.
- Customer-level analysis may be incomplete because of missing customer identifiers.

## Project Structure

```text
01_Ecommerce_Analytics/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
├── reports/
└── dashboard/
    └── charts/
```

The original raw dataset should remain unchanged. Processed files and reports
are generated separately.

## Reproducibility

The analysis was conducted in a Jupyter Notebook using Python, pandas,
and Matplotlib. The cleaning rules and limitations are documented so that
the results can be interpreted and reviewed.

## Currency Note

Values are presented in pounds sterling (£), consistent with the UK retail
context of the dataset. This assumption should be verified against the
dataset documentation before formal reporting.
