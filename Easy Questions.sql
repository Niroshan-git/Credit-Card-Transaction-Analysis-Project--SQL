---------------------------------------Easy Questions:-------------------------------------------------------------------------------
--01. Count the total number of transactions.--------------------------------------------------

SELECT count(transaction_time) FROM data_cleaned

--02. What is the average transaction amount?------------------------------------------------

SELECT ROUND(AVG(amt), 2) FROM data_cleaned;

--03. List all merchants with more than 1000 transactions.----------------------------------

SELECT 
    merchant,
    COUNT(transaction_time) AS "Transaction Count"
FROM data_cleaned
GROUP BY merchant
HAVING COUNT(transaction_time) > 1000
ORDER BY "Transaction Count" DESC;

--04. Get the total number of fraudulent transactions.-------------------------------------------

select  COUNT(transaction_time) from 
data_cleaned WHERE is_fraud = 1

--05. Find the earliest and latest transaction dates.--------------------------------------

SELECT 
MIN(transaction_time) as "Earliest Transaction",
MAX(transaction_time) as "Latest Transaction"
FROM data_cleaned

--06. List customers who have made transactions above $5000.--------------------------------

SELECT 
customer,
amt
FROM data_cleaned
WHERE amt > 5000
group by 1 , 2
order by 2 DESC

--07. What are the top 5 most common transaction categories--------------------

select 
category,
count(transaction_time) 
from data_cleaned
group by 1
order by 2 DESC
LIMIT 5

--08. Find the number of distinct merchants.-------------------------------------

select COUNT(DISTINCT merchant)
FROM data_cleaned

--09. Calculate the total transaction amount per customer.----------------------------

select
customer,
SUM(amt)
FROM data_cleaned
group by 1
order by 2 DESC

--10. Count the number of transactions in each fraud category.------------------------------

select
category,
count(transaction_time)
from data_cleaned
WHERE is_fraud = 1
group by 1
order by 2 DESC







