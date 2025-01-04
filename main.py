import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv
import os


load_dotenv('db.env')

#Define databse connection parameters
db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')
db_host = os.getenv('DB_HOST')
db_port= os.getenv('DB_PORT')
db_name = os.getenv('DB_NAME')
table_name = 'data_table'

# Create database connection parameters from environmen variables

engine = create_engine(f'postgresql+psycopg2://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')

# Read the csv file into a Dataframe
df = pd.read_csv('credit_card_transactions.csv')

# Write the Dataframe to a SQL table, creating it if it donsent't exists

df.to_sql(table_name, con=engine, if_exists='replace', index=False)

print("Table created and data import successfully")




