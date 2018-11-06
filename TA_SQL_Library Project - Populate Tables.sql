/*  Tech Academy SQL Final Project 
	By Nolan Bisschoff
	5 November 2018
	File containing the methods to populate the tables for the Library Database Project
*/

/* Populate Tables */
INSERT INTO tbl_library_branch
	(branch_name, branch_address)
	VALUES
	('Sharpstown', '1 Sharp Edge Street'),
	('Central', '20 Middle Earth Bv'),
	('Oak Library', 'Central Oaktown'),
	('Alkimos Library', 'Alkimos Central'),
	('Joondalup Library', 'City of Joondalup')
;

INSERT INTO tbl_publisher 
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Awesome Publishers','100 Awesome Bv', '555-112323'),
	('Pretty Good Publishers','761 Good Guys Road', '555-98756'),
	('Average Publishers','123 Average Parade', '555-3412234'),
	('Bad Publishers','23 Michael Jackson Street', '555-876545'),
	('Terrible Publishers','1 Up and Down Street', '555-129876'),
	('Worthless Publishers','10 EA Street', '555-9876')
;

INSERT INTO tbl_books
	(title, fk_publisher_name)
	VALUES
	('The Lost Tribe','Awesome Publishers'),
	('The Lost Vikings','Pretty Good Publishers'),
	('The Lost Boys','Average Publishers'),
	('Peter Pan','Bad Publishers'),
	('Dune','Terrible Publishers'),
	('The world of concrete','Worthless Publishers'),
	('Accounting Made Fun','Awesome Publishers'),
	('How to dislike bankers','Pretty Good Publishers'),
	('Grow your own gold','Average Publishers'),
	('Six ways to sunday','Bad Publishers'),
	('How to build a PC','Terrible Publishers'),
	('The world of concrete part 2','Worthless Publishers'),
	('Steel miners','Awesome Publishers'),
	('The last pastry chef','Pretty Good Publishers'),
	('The Visual code','Average Publishers'),
	('Programming for dummies','Bad Publishers'),
	('Running out of titles','Terrible Publishers'),
	('South America in pictures','Worthless Publishers'),
	('Pictures in pictures','Awesome Publishers'),
	('How to make an omlette','Pretty Good Publishers'),
	('Swimming made easy','Average Publishers'),
	('The Last book','Bad Publishers')
;

INSERT INTO tbl_book_authors 
	(fk_book_id, book_authors)
	VALUES
	('100','Stephen King'),
	('101','Frank herbert'),
	('102','Chris Metzen'),
	('103','Ryan Stiles'),
	('104','Stephen King'),
	('105','Jack Jones'),
	('106','Walt Disney'),
	('107','Thrall'),
	('108','Book Writer'),
	('109','Stephen King'),
	('110','Stephens Brother'),
	('111','Stephens Sister'),
	('112','Not Rian Johnson'),
	('113','Thrall'),
	('114','John Boyega'),
	('115','Arthas Menethil'),
	('116','Darth Vader'),
	('117','Luke Skywalker'),
	('118','Han Solo'),
	('119','Lando Calrissian'),
	('120','Chewy'),
	('121','Tyrael')
;

INSERT INTO tbl_book_copies 
	(fk_book_id, fk_branch_id, book_copies_numberofCopies)
	VALUES
	('100','1',4),	('101','1',5),	('103','1',4),	('105','1',5),	('107','1',4),	('109','1',5),	('111','1',4),	('113','1',5),	('115','1',4),	('117','1',5),
	('100','2',5),	('104','2',7),	('106','2',4),	('108','2',5),	('110','2',4),	('112','2',5),	('114','2',4),	('116','2',5),	('118','2',4),	('120','2',5),
	('100','3',23),	('121','3',5),	('119','3',4),	('116','3',5),	('113','3',4),	('110','3',5),	('107','3',4),	('104','3',5),	('101','3',4),	('102','3',5),
	('120','3',4),	('118','3',5),	('114','3',4),	('108','3',5),	('105','3',4),
	('102','4',4),	('101','4',5),	('102','4',4),	('103','4',5),	('104','4',4),	('105','4',5),	('106','4',4),	('107','4',5),	('108','4',4),	('109','4',5),
	('110','4',4),	('111','4',5),	('112','4',4),
	('100','5',7),	('121','5',5),	('120','5',4),	('119','5',5),	('118','5',4),	('117','5',5),	('116','5',4),	('115','5',5),	('114','5',4),	('113','5',5),
	('112','5',4),	('111','5',5),	('110','5',4),	('109','5',5),	('108','5',4),	('107','5',5)
;

INSERT INTO tbl_borrower
	(borrower_name, borrower_address, borrower_phone)
	VALUES
	('James P Sullivan', '1 Pink Street', '555-123'),
	('Mike Wazowski', '1 Red Street', '555-456'),
	('Randall Boggs', '2 Orange Street', '555-789'),
	('Boo', '32 Yellow Street', '555-987'),
	('Henry J Waternoose', '11 Magenta Street', '555-654'),
	('Celia Mae', '31 Cyan Street', '555-321'),
	('Jeff Fungus', '21 Violet Street', '555-111'),
	('Roz', '12 Indigo Street', '555-222'),
	('Jimmy No-Read', '211 Watches Tv Street', '555-192')
;

INSERT INTO tbl_book_loans
	(fk_book_id, fk_branch_id, fk_card_no, book_loans_date_out, book_loans_date_due)
	VALUES
	/* Borrower 1 */
	('100', '1', '5000', '01/11/2018', '14/11/2018'),
	('101', '2', '5000', '01/11/2018', '14/11/2018'),
	('102', '3', '5000', '01/11/2018', '14/11/2018'),
	('103', '4', '5000', '01/11/2018', '14/11/2018'),
	('104', '1', '5000', '01/11/2018', '14/11/2018'),
	('105', '1', '5000', '01/11/2018', '14/11/2018'),
	('106', '1', '5000', '01/11/2018', '14/11/2018'),
	('107', '1', '5000', '01/11/2018', '14/11/2018'),
	('108', '2', '5000', '01/11/2018', '14/11/2018'),
	('109', '2', '5000', '01/11/2018', '14/11/2018'),
	('110', '4', '5000', '01/11/2018', '14/11/2018'),
	('111', '1', '5000', '01/11/2018', '14/11/2018'),
	('112', '1', '5000', '01/11/2018', '14/11/2018'),
	/* Borrower 2 */
	('121', '1', '5001', '02/11/2018', '15/11/2018'),
	('120', '3', '5001', '02/11/2018', '15/11/2018'),
	('119', '5', '5001', '02/11/2018', '15/11/2018'),
	('118', '1', '5001', '02/11/2018', '15/11/2018'),
	('117', '1', '5001', '02/11/2018', '15/11/2018'),
	('116', '3', '5001', '02/11/2018', '15/11/2018'),
	('115', '1', '5001', '02/11/2018', '15/11/2018'),
	('114', '2', '5001', '02/11/2018', '15/11/2018'),
	('113', '1', '5001', '02/11/2018', '15/11/2018'),
	('112', '1', '5001', '02/11/2018', '15/11/2018'),
	/* Borrower 3 */
	('100', '5', '5002', '03/11/2018', '16/11/2018'),
	('102', '4', '5002', '03/11/2018', '16/11/2018'),
	('104', '3', '5002', '03/11/2018', '16/11/2018'),
	('106', '2', '5002', '03/11/2018', '16/11/2018'),
	('108', '1', '5002', '03/11/2018', '16/11/2018'),
	('110', '1', '5002', '03/11/2018', '16/11/2018'),
	('112', '5', '5002', '03/11/2018', '16/11/2018'),
	('114', '5', '5002', '03/11/2018', '16/11/2018'),
	('116', '5', '5002', '03/11/2018', '16/11/2018'),
	('118', '1', '5002', '03/11/2018', '16/11/2018'),
	/* Borrower 4 */
	('101', '1', '5003', '01/11/2018', '14/11/2018'),
	('103', '3', '5003', '01/11/2018', '14/11/2018'),
	('105', '3', '5003', '01/11/2018', '14/11/2018'),
	('107', '1', '5003', '01/11/2018', '14/11/2018'),
	/* Borrower 5 */
	('109', '1', '5004', '03/11/2018', '16/11/2018'),
	('111', '4', '5004', '03/11/2018', '16/11/2018'),
	('113', '4', '5004', '03/11/2018', '16/11/2018'),
	('115', '1', '5004', '03/11/2018', '16/11/2018'),
	/* Borrower 6 */
	('120', '2', '5005', '01/11/2018', '14/11/2018'),
	('117', '2', '5005', '01/11/2018', '14/11/2018'),
	('119', '3', '5005', '01/11/2018', '14/11/2018'),
	('121', '4', '5005', '01/11/2018', '14/11/2018'),
	/* Borrower 7 */
	('121', '4', '5006', '02/11/2018', '15/11/2018'),
	('119', '3', '5006', '02/11/2018', '15/11/2018'),
	('117', '4', '5006', '02/11/2018', '15/11/2018'),
	/* Borrower 8 */
	('100', '5', '5007', '01/11/2018', '14/11/2018'),
	('102', '5', '5007', '01/11/2018', '14/11/2018'),
	('104', '1', '5007', '01/11/2018', '14/11/2018')
;


/*  Queries 
	The queries before they were put into stored procedures in the "Stored Procedures" file 
*/
-- 1 --
SELECT a1.title AS 'Book Title', a2.book_copies_numberofCopies AS 'Number of Copies', a3.branch_name AS 'Branch Name'
	FROM tbl_books a1
	INNER JOIN tbl_book_copies a2 ON a1.book_id = a2.fk_book_id
	INNER JOIN tbl_library_branch a3 ON a2.fk_branch_id = a3.branch_id
	WHERE a3.branch_name = 'Sharpstown' and a1.title = 'The Lost Tribe'
;
-- 2 -- 
SELECT a1.title AS 'Book Title', a2.book_copies_numberofCopies AS 'Number of Copies', a3.branch_name AS 'Branch Name'
	FROM tbl_books a1
	INNER JOIN tbl_book_copies a2 ON a1.book_id = a2.fk_book_id
	INNER JOIN tbl_library_branch a3 ON a2.fk_branch_id = a3.branch_id
	WHERE a1.title = 'The Lost Tribe'
;

-- 3 --
SELECT a1.card_no AS 'Card Number', a1.borrower_name AS 'Name'
	FROM tbl_borrower a1 
	LEFT JOIN tbl_book_loans a2 ON a1.card_no = a2.fk_card_no
	WHERE a2.fk_card_no IS NULL;

-- 4 -- 
SELECT a5.title As 'Book Title', a4.borrower_name AS 'Borrower Name' , a4.borrower_address AS 'Borrower Address'
	FROM tbl_book_loans a1
	INNER JOIN tbl_library_branch a2 ON a2.branch_id = a1.fk_branch_id
	INNER JOIN tbl_borrower a4 ON a4.card_no = a1.fk_card_no
	INNER JOIN tbl_books a5 ON a5.book_id = a1.fk_book_id
	WHERE a2.branch_name = 'Sharpstown' AND a1.book_loans_date_due = '14/11/2018';

-- 5 --
SELECT a1.branch_name AS 'Branch Name' , COUNT(fk_branch_id) AS 'Total Books Loaned out'
	FROM tbl_book_loans a2
	INNER JOIN tbl_library_branch a1 ON a1.branch_id = a2.fk_branch_id
	GROUP BY a1.branch_name;

-- 6 --
SELECT a2.borrower_name, a2.borrower_address, COUNT(fk_card_no) AS 'Number of Books'
	FROM tbl_book_loans a1
	INNER JOIN tbl_borrower a2 ON a2.card_no = a1.fk_card_no
	GROUP BY a2.borrower_name, a2.borrower_address
	HAVING COUNT(fk_card_no) > 5;

-- 7 --
SELECT a1.title AS 'Book Title', a2.book_authors AS 'Author', a3.book_copies_numberofCopies AS 'Number of Copies', a4.branch_name AS 'Branch'
	FROM tbl_books a1
	INNER JOIN tbl_book_authors a2 ON a2.fk_book_id = a1.book_id
	INNER JOIN tbl_book_copies a3 ON a3.fk_book_id = a1.book_id
	INNER JOIN tbl_library_branch a4 ON a4.branch_id = a3.fk_branch_id
	WHERE a2.book_authors = 'Stephen King' AND a4.branch_name = 'Central';


