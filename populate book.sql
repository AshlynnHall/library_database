USE library;

INSERT INTO book (title, genre_id, year_published, publisher_id) VALUES
  ('Project Hail Mary', (SELECT genre_id FROM genre WHERE genre_name = 'Science Fiction'), 2021, COALESCE((SELECT publisher_id FROM publisher WHERE name = 'Penguin Random House' LIMIT 1), 1)),
  ('A Gentleman in Moscow', (SELECT genre_id FROM genre WHERE genre_name = 'Fiction'), 2016, COALESCE((SELECT publisher_id FROM publisher WHERE name = 'Viking Press (Penguin Random House)' LIMIT 1), 1)),
  ('Sapiens: A Brief History of Humankind', (SELECT genre_id FROM genre WHERE genre_name = 'Non-Fiction'), 2014, COALESCE((SELECT publisher_id FROM publisher WHERE name = 'HarperCollins' LIMIT 1), 1)),
  ('The Thursday Murder Club', (SELECT genre_id FROM genre WHERE genre_name = 'Mystery'), 2020, COALESCE((SELECT publisher_id FROM publisher WHERE name = 'Viking Press (Penguin Random House)' LIMIT 1), 1)),
  ('The Kiss Quotient', (SELECT genre_id FROM genre WHERE genre_name = 'Romance'), 2019, COALESCE((SELECT publisher_id FROM publisher WHERE name = 'Avon (HarperCollins)' LIMIT 1), 1));