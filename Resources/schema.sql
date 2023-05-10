-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Readers_Digest" (
    "Title" VARCHAR   NOT NULL,
    "Author" VARCHAR   NOT NULL,
    "Book_Published" varchar   NOT NULL,
    "Movie_Released" INT   NOT NULL,
    "ISBN" int   NOT NULL
);

CREATE TABLE "goodreads" (
    "Book_ID" int   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    "Author" VARCHAR   NOT NULL,
    "average_rating" float   NOT NULL,
    "ISBN" int   NOT NULL,
    "num_pages" int   NOT NULL,
    "ratings_count" int   NOT NULL,
    "text_reviews" int   NOT NULL,
    "publication_date" DATE   NOT NULL,
    "publisher" varchar   NOT NULL,
    "genres" VARCHAR   NOT NULL
);

CREATE TABLE "movies" (
    "movie_id" int   NOT NULL,
    "Movie_Title" varchar   NOT NULL,
    "year" int   NOT NULL,
    "movie_length" int   NOT NULL,
    "movie_genre" VARCHAR   NOT NULL,
    "movie_rating" VARCHAR   NOT NULL,
    "star_rating" FLOAT   NOT NULL,
    "gross_amount" varchar   NOT NULL
);

CREATE TABLE "best_sellers" (
    "Author" VARCHAR   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    "ISBN" int   NOT NULL,
    "Publisher" varchar   NOT NULL,
    "Published_date" date   NOT NULL,
    "bestseller_date" date   NOT NULL,
    "weeks_on_list" int   NOT NULL
);

ALTER TABLE "goodreads" ADD CONSTRAINT "fk_goodreads_Title_Author_ISBN" FOREIGN KEY("Title", "Author", "ISBN")
REFERENCES "Readers_Digest" ("Title", "Author", "ISBN");

ALTER TABLE "best_sellers" ADD CONSTRAINT "fk_best_sellers_Author_Title_ISBN" FOREIGN KEY("Author", "Title", "ISBN")
REFERENCES "goodreads" ("Author", "Title", "ISBN");

