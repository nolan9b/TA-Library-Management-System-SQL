/*  Tech Academy SQL Final Project 
	By Nolan Bisschoff
	5 November 2018
	File containing all the create table methods for the Library Database project
*/

/* Create Tables */
CREATE TABLE tbl_library_branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_name VARCHAR(60) NOT NULL,
	branch_address VARCHAR (60) NOT NULL
);

CREATE TABLE tbl_publisher (
	publisher_name VARCHAR(60) PRIMARY KEY NOT NULL,
	publisher_address VARCHAR(60) NOT NULL,
	publisher_phone VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_books (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	title VARCHAR (100) NOT NULL,
	fk_publisher_name VARCHAR(60) FOREIGN KEY REFERENCES tbl_publisher(publisher_name)
);

CREATE TABLE tbl_borrower (
	card_no INT PRIMARY KEY NOT NULL IDENTITY (5000,1),
	borrower_name VARCHAR (100) NOT NULL,
	borrower_address VARCHAR (100) NOT NULL,
	borrower_phone VARCHAR (100) NOT NULL
);

CREATE TABLE tbl_book_copies (
	fk_book_id INT FOREIGN KEY REFERENCES tbl_books(book_ID),
	fk_branch_id INT FOREIGN KEY REFERENCES tbl_library_branch(branch_id), 
	book_copies_numberofCopies INT NOT NULL
);

CREATE TABLE tbl_book_loans (
	fk_book_id INT FOREIGN KEY REFERENCES tbl_books(book_ID),
	fk_branch_id INT FOREIGN KEY REFERENCES tbl_library_branch(branch_id), 
	fk_card_no INT FOREIGN KEY REFERENCES tbl_borrower(card_no), 
	book_loans_date_out VARCHAR (100) NOT NULL,
	book_loans_date_due VARCHAR (100) NOT NULL
);

CREATE TABLE tbl_book_authors (
	fk_book_id INT FOREIGN KEY REFERENCES tbl_books(book_ID),
	book_authors VARCHAR(60) NOT NULL
);





