/*  Tech Academy SQL Final Project 
	By Nolan Bisschoff
	6 November 2018
	File containing all the stored procedure for the Library Database project,
	also including the relevant EXEC statements.
*/

/*	Question 1 
	Create a procedure to query how many copies of a book are at a specific library branch
	Tested with branch "Sharpstown" and book "The Lost Tribe"
*/
CREATE PROCEDURE dbo.uspGetBookCopies @BranchName NVARCHAR(60) = NULL, @BookName NVARCHAR(60) = NULL
AS
SELECT a1.title AS 'Book Title', a2.book_copies_numberofCopies AS 'Number of Copies', a3.branch_name AS 'Branch Name'
	FROM tbl_books a1
	INNER JOIN tbl_book_copies a2 ON a1.book_id = a2.fk_book_id
	INNER JOIN tbl_library_branch a3 ON a2.fk_branch_id = a3.branch_id
	WHERE a3.branch_name = ISNULL(@BranchName, branch_name) AND a1.title = ISNULL(@BookName, title)
GO

EXEC dbo.uspGetBookCopies @BranchName = 'Sharpstown', @BookName = 'The Lost Tribe';

/*	Question 2 
	Create a procedure to query how many copies of a book are at all branches
	Tested with book "The Lost Tribe"
*/
CREATE PROCEDURE dbo.uspGetBookCopiesByAllBranches @BookName NVARCHAR(60) = NULL
AS
SELECT a1.title AS 'Book Title', a2.book_copies_numberofCopies AS 'Number of Copies', a3.branch_name AS 'Branch Name'
	FROM tbl_books a1
	INNER JOIN tbl_book_copies a2 ON a1.book_id = a2.fk_book_id
	INNER JOIN tbl_library_branch a3 ON a2.fk_branch_id = a3.branch_id
	WHERE a1.title = ISNULL(@BookName, title)
GO

EXEC dbo.uspGetBookCopies @BookName = 'The Lost Tribe';

/*	Question 3
	Create a procedure to query which borrowers have no books.
*/
CREATE PROCEDURE dbo.uspGetNonBorrowers 
AS
SELECT a1.card_no AS 'Card Number', a1.borrower_name AS 'Name'
	FROM tbl_borrower a1 
	LEFT JOIN tbl_book_loans a2 ON a1.card_no = a2.fk_card_no
	WHERE a2.fk_card_no IS NULL
GO

EXEC dbo.uspGetNonBorrowers;

/*	Question 4 
	Create a procedure to query which books are due on a certain date and at what branch
	Tested with branch 'Sharpstown' and date of '14/11/2018'
	This could be set to todays date as per the question but when I created my tables I had no books due today
	so this would return no values.
	Not sure if the question required using a "DATE" type of function, something like the Now() function in C# 
*/

CREATE PROCEDURE dbo.uspGetDueBooks @BranchName NVARCHAR(60) = NULL, @DueDate NVARCHAR(60) = NULL
AS
SELECT a5.title As 'Book Title', a4.borrower_name AS 'Borrower Name' , a4.borrower_address AS 'Borrower Address'
	FROM tbl_book_loans a1
	INNER JOIN tbl_library_branch a2 ON a2.branch_id = a1.fk_branch_id
	INNER JOIN tbl_borrower a4 ON a4.card_no = a1.fk_card_no
	INNER JOIN tbl_books a5 ON a5.book_id = a1.fk_book_id
	WHERE a2.branch_name = ISNULL(@BranchName, branch_name) AND a1.book_loans_date_due = ISNULL(@DueDate, book_loans_date_due)
GO

EXEC dbo.uspGetDueBooks @BranchName = 'Sharpstown', @DueDate = '14/11/2018';

/*	Question 5
	Create a procedure to query how many books are currently on loan by all library branches
*/
CREATE PROCEDURE dbo.uspGetAllBooksLoanedOut
AS
SELECT a1.branch_name AS 'Branch Name' , COUNT(fk_branch_id) AS 'Total Books Loaned out'
	FROM tbl_book_loans a2
	INNER JOIN tbl_library_branch a1 ON a1.branch_id = a2.fk_branch_id
	GROUP BY a1.branch_name
GO

EXEC dbo.uspGetAllBooksLoanedOut;

/*	Question 5
	Create a procedure to query all borrowers who have more than 5 books
*/

CREATE PROCEDURE dbo.uspGetAllHighVolumeBorrowers
AS
SELECT a2.borrower_name, a2.borrower_address, COUNT(fk_card_no) AS 'Number of Books'
	FROM tbl_book_loans a1
	INNER JOIN tbl_borrower a2 ON a2.card_no = a1.fk_card_no
	GROUP BY a2.borrower_name, a2.borrower_address
	HAVING COUNT(fk_card_no) > 5
GO

EXEC dbo.uspGetAllHighVolumeBorrowers;

/*	Question 7
	Create a procedure to query how many copies of a book by an author are at a specific library branch
	Tested with branch "Central" and author "Stephen King"
*/
CREATE PROCEDURE dbo.uspGetBookNumbersByAuthor @Author NVARCHAR(60) = NULL, @BranchName NVARCHAR(60) = NULL
AS
SELECT a1.title AS 'Book Title', a2.book_authors AS 'Author', a3.book_copies_numberofCopies AS 'Number of Copies', a4.branch_name AS 'Branch'
	FROM tbl_books a1
	INNER JOIN tbl_book_authors a2 ON a2.fk_book_id = a1.book_id
	INNER JOIN tbl_book_copies a3 ON a3.fk_book_id = a1.book_id
	INNER JOIN tbl_library_branch a4 ON a4.branch_id = a3.fk_branch_id
	WHERE a2.book_authors = ISNULL(@Author, book_authors) AND a4.branch_name = ISNULL(@BranchName, branch_name)
GO

EXEC dbo.uspGetBookNumbersByAuthor @Author = 'Stephen King',  @BranchName = 'Central';
	







