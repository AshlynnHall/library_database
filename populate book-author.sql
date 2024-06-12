USE library;

INSERT INTO book_has_author (book_id, author_id)
SELECT b.book_id, a.author_id
FROM book b
INNER JOIN author a ON (b.title LIKE '%Project Hail Mary%') AND (a.author_name = 'Andy Weir');

INSERT INTO book_has_author (book_id, author_id)
SELECT b.book_id, a.author_id
FROM book b
INNER JOIN author a ON (b.title LIKE '%Gentleman in Moscow%') AND (a.author_name = 'Amor Towles');