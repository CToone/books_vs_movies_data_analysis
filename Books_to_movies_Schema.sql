-- Creating tables for books ***
CREATE TABLE books (
     book_title VARCHAR(250) NOT NULL,
     author VARCHAR(250) NOT NULL,
	 isbn VARCHAR(250) NOT NULL,
     publisher VARCHAR(40) NOT NULL,
	 weeks_on_list VARCHAR(40) NOT NULL
)


-- Creating tables for movies *** 
CREATE TABLE imbd (
    movie_title TEXT NOT NULL,
	year INT,
	movie_length TEXT NOT NULL,
	movie_genre VARCHAR NOT NULL,
	star_rating TEXT NOT NULL,
	gross_amount VARCHAR NOT NULL
	)



-- Creating tables for books ***
CREATE TABLE btm (
     title VARCHAR,
     author VARCHAR,
	 book_published VARCHAR,
     movie_released VARCHAR,
	 isbn VARCHAR
)




-- Creating tables for books
CREATE TABLE goodreads (
     book_id  VARCHAR,
	 title VARCHAR,
	 author VARCHAR,
	 average_rating VARCHAR,
	 isbn VARCHAR,
	 isbn13 VARCHAR,
	 publication_date VARCHAR,
	 publisher VARCHAR
	)

	
SELECT * FROM imbd
	