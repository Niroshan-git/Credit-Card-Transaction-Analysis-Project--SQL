-------------------Data Cleaning----------------------------------------
-------01. Check all data count----------------------------

select count(*) from data_table


-------02. Checking for  dublicate values-----------------------

SELECT DISTINCT * FROM data_table


-------03. Insert the data to new table-----------------------

create table data_cleaned as
(SELECT DISTINCT * FROM data_table )

-------04. Remove the unwanted spaces-----------------------------


UPDATE data_cleaned
SET
	merchant = TRIM(merchant),
	category = TRIM(category),
	first = TRIM(first),
	last = TRIM(last),
	gender = TRIM(gender),
	street = TRIM(street),
	city = TRIM(city),
	state = TRIM(state),
	job = TRIM(job),
	dob = TRIM(dob),
	trans_num = TRIM(trans_num);


--------Convert the dates to timestamp--------------------

ALTER TABLE data_cleaned
ALTER COLUMN trans_date_trans_time TYPE TIMESTAMP USING trans_date_trans_time::TIMESTAMP

-------Rename the columns---------------------------------------
ALTER TABLE data_cleaned
RENAME COLUMN trans_date_trans_time TO transaction_time;

-------Convert the amt to intiger-----------------------------

ALTER TABLE data_cleaned
ALTER COLUMN amt TYPE INTEGER USING amt::INTEGER;


------Make a customer field--------------------------------------------------

ALTER TABLE data_cleaned
ADD COLUMN customer VARCHAR;

UPDATE data_cleaned
SET customer = first || ' ' || last;


select * from data_cleaned LIMIT 10




