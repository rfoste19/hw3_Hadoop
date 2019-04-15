CREATE EXTERNAL TABLE IF NOT EXISTS books
	(isbn INT,
	title STRING,
	author STRING,
	year INT,
	publisher STRING,
	image_s STRING,
	image_m STRING,
	image_l STRING)
COMMENT 'Book crossing books list cleaned'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
STORED AS TEXTFILE
LOCATION '/user/hadoop/book-crossing/books';
