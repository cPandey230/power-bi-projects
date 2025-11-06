-- 0. Create a database
CREATE DATABASE ccdb;

-- Use the created database
USE ccdb;

-- 1. Create `cc_detail` table
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- 2. Create `cust_detail` table
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- 3. Import data from CSV files into the tables

-- Import data into `cc_detail`
LOAD DATA INFILE 'C:/Users/chandan/OneDrive/Desktop/data Analytics/zProjects/powerbi/p5 Credit card/cc_add.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Import data into `cust_detail`
LOAD DATA INFILE 'C:/Users/chandan/OneDrive/Desktop/data Analytics/zProjects/powerbi/p5 Credit card/customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 4. Insert additional data into the tables using the same approach

-- Import additional data into `cc_detail`
LOAD DATA INFILE 'C:/Users/chandan/OneDrive/Desktop/data Analytics/zProjects/powerbi/p5 Credit card/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Import additional data into `cust_detail`
LOAD DATA INFILE 'C:/Users/chandan/OneDrive/Desktop/data Analytics/zProjects/powerbi/p5 Credit card/cust_add.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Notes:
-- 1. Ensure that the MySQL server has permission to access the file path.
-- 2. Verify that the MySQL server's `secure_file_priv` system variable allows file imports from the specified directory.
-- 3. If any date-related errors occur, check the format of dates in the CSV files and ensure they match the `YYYY-MM-DD` format.
-- 4. Modify file paths as necessary to reflect your environment.
