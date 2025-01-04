# Credit Card Transaction Analysis Project

## Project Overview
A comprehensive end-to-end data analysis project that includes data ingestion, cleaning, and analysis of credit card transactions. The project demonstrates proficiency in both Python ETL processes and SQL analysis, focusing on fraud detection, spending patterns, and customer behavior.

## Technical Architecture

### Data Ingestion (Python)
```python
import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv
import os

# Load environment variables
load_dotenv('db.env')

# Define database connection parameters
db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')
db_host = os.getenv('DB_HOST')
db_port = os.getenv('DB_PORT')
db_name = os.getenv('DB_NAME')
table_name = 'data_table'

# Create database connection
engine = create_engine(f'postgresql+psycopg2://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')

# Read the CSV file into a DataFrame
df = pd.read_csv('credit_card_transactions.csv')

# Write the DataFrame to a SQL table
df.to_sql(table_name, con=engine, if_exists='replace', index=False)

print("Table created and data imported successfully")
```

### Data Cleaning & Preprocessing
- Implemented robust data cleaning procedures including:
  - Removal of duplicate transactions using SQL DISTINCT
  - Standardization of text fields using TRIM functions
  - Proper data type conversion for timestamps and amounts
  - Column renaming for better clarity
  - Creation of a unified customer identifier field

![Credit Card 01](https://github.com/user-attachments/assets/462cc600-3670-48ad-a43c-db57508d0f7d)

### Transaction Analysis Capabilities
- Total transaction count tracking
- Average transaction amount calculation
- High-value transaction identification (>$5000)
- Merchant activity monitoring
- Fraud rate analysis by city
- Customer spending pattern analysis

  ![Credit Card 02](https://github.com/user-attachments/assets/1f43e075-f2b3-4274-8f97-8a123d6e2339)


## Technical Skills Demonstrated

### Python Data Engineering
- ETL pipeline development
- Environment variable management for secure database connections
- PostgreSQL database integration using SQLAlchemy
- Pandas DataFrame operations
- Secure credential management

![Credit Card 03](https://github.com/user-attachments/assets/0bcabbc2-f9cb-4218-875a-2935b0d0b8e9)

### SQL Proficiency
- Complex aggregations using GROUP BY clauses
- Window functions for advanced analytics
- Subqueries and derived tables
- Data type conversions and handling
- Table alterations and schema modifications

### Data Analysis Skills
- Fraud pattern detection
- Transaction anomaly identification
- Customer segmentation
- Temporal data analysis
- Statistical calculations (averages, counts, rates)

## Key Findings & Insights
1. Implemented fraud detection system identifying top 3 cities with highest fraud rates
2. Created customer spending analysis identifying highest-value customers
3. Built merchant transaction volume tracking (>1000 transactions)
4. Developed high-value transaction monitoring system (>$5000)

## Learning Outcomes
1. Enhanced understanding of end-to-end data pipeline development
2. Mastered secure database connection management
3. Improved SQL data cleaning best practices
4. Developed efficient fraud detection methodologies
5. Gained experience in financial data analysis

## Future Improvements
- Implement automated data quality checks
- Add data validation in the Python ingestion script
- Develop real-time transaction monitoring
- Include seasonal trend analysis
- Add customer segmentation based on spending patterns
- Develop merchant risk scoring system
- Add visualization layer for better data interpretation

## Technologies Used
- Python
- Pandas
- SQLAlchemy
- PostgreSQL
- Environment Variable Management
- SQL Analytics
- Financial Analysis

## Project Structure
```
project/
│
├── scripts/
│   ├── data_ingestion.py    # Python ETL script
│   └── sql_analysis.sql     # SQL analysis queries
│
├── data/
│   └── credit_card_transactions.csv
│
├── db.env                   # Database credentials
└── README.md
```

---
*Note: This project is part of a data engineering and analysis portfolio demonstrating full-stack data processing capabilities.*
