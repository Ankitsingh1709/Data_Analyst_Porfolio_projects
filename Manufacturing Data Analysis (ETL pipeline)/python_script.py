"""The python script take all the files in the specific folder provided in dir variable and irritate the files in the directory, 
then we extract the file name and use it as a table name, then we use pandas to load the file in database using truncate and load method.
Pandas are relly good at this so we dont have to care so much about data types"""


#import needed libraries
from sqlalchemy import create_engine #intract with psql
import pyodbc  
import pandas as pd
# this is imported from config folder
import os
import glob
import psycopg2 

# Create an SQLAlchemy engine using the connection string
db_params = {
    'dbname': 'postgres',
    'user': 'postgres',
    'password': ' Ankit123',
    'host': 'localhost',  # Default is 'localhost' if using a local database
    'port': '5432'   # Default is 5432
}
try:
    engine = create_engine(f"postgresql://{db_params['user']}:{db_params['password']}@{db_params['host']}:{db_params['port']}/{db_params['dbname']}")
except psycopg2.Error as e:
    print("Error: Unable to connect to the database")
    print(e)
    exit()
 


dir =  'C:\\Users\\Ankit Singh\\Downloads\\technical_test_senior_data_analyst\\data'
excel_fiel = glob.glob(dir) # to check for the right path
print(excel_fiel)



#extract data from sql server
def extract():
    try:
        # starting directory
        directory = dir
        # iterate over files in the directory
        for filename in os.listdir(directory):
            print('in dictonary')
            #get filename without ext
            file_wo_ext = os.path.splitext(filename)[0]
            # only process excel files
            if filename.endswith(".xlsx"):
                f = os.path.join(directory, filename)
                # checking if it is a file
                if os.path.isfile(f):
                    df = pd.read_excel(f)
                    # call to load
                    load(df, file_wo_ext)
    except Exception as e:
        print(e)
        exit()

#load data to postgres
def load(df, tbl):
    try:
        rows_imported = 0
        print(f'importing rows {rows_imported} to {rows_imported + len(df)}... ')
        # save df to postgres
        df.to_sql(f"stg_{tbl}", engine, if_exists='replace', index=False)
        rows_imported += len(df)
        # add elapsed time to final print out
        print("Data imported successful")
    except Exception as e:
        print("Data load error: " + str(e))

try:
    #call extract function
    df = extract()
except Exception as e:
    print("Error while extracting data: " + str(e))

