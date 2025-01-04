---------------------------Medium Questions:-----------------------------------------------------

--01. Identify the customer with the highest total spending.---------------------------------------

select 
customer,
SUM(amt)
FROM data_cleaned
group by 1
order by 2 DESC
Limit 1

-- 02. Find the top 3 cities with the highest fraud rate.-----------------------------------------

SELECT 
    city,
    COUNT(*) AS city_fraud_count,
    COUNT(*) * 1.0 / (SELECT COUNT(*) FROM data_cleaned WHERE is_fraud = 1) AS fraud_rate
FROM 
    data_cleaned
WHERE 
    is_fraud = 1
GROUP BY 
    city
ORDER BY 
    city_fraud_count DESC
LIMIT 3;

--03. 	