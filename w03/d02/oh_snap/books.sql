CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  price MONEY,
  description TEXT,
  title VARCHAR,
  author VARCHAR,
  published_on DATE
);
