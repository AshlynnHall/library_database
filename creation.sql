USE library;

CREATE TABLE genre (
  genre_id INT NOT NULL AUTO_INCREMENT,
  genre_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (genre_id)
);

CREATE TABLE publisher (
  publisher_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(250) NOT NULL,
  PRIMARY KEY (publisher_id)
);

CREATE TABLE book (
  book_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  genre_id INT NOT NULL,
  year_published YEAR NOT NULL,
  publisher_id INT NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
  FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);

CREATE TABLE book_copy (
  book_copy_id INT NOT NULL AUTO_INCREMENT,
  book_id INT NOT NULL,
  PRIMARY KEY (book_copy_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE author (
  author_id INT NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (author_id)
);

CREATE TABLE book_has_author (
  book_id INT NOT NULL,
  author_id INT NOT NULL,
  PRIMARY KEY (book_id, author_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id),
  FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE account (
  account_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (account_id)
);

CREATE TABLE checkout (
  checkout_id INT NOT NULL AUTO_INCREMENT,
  book_copy_id INT NOT NULL,
  account_id INT NOT NULL,
  checkout_start DATE NOT NULL,
  checkout_end DATE,
  returned TINYINT NOT NULL,
  PRIMARY KEY (checkout_id),
  FOREIGN KEY (book_copy_id) REFERENCES book_copy(book_copy_id),
  FOREIGN KEY (account_id) REFERENCES account(account_id)
);