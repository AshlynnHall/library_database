USE library;

INSERT INTO book_copy (book_id)
SELECT book_id FROM book;

INSERT INTO book_copy (book_id)
SELECT book_id FROM book;