CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  nationality VARCHAR,
  dob INTEGER
);

CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  year INTEGER,
  url VARCHAR,
  artist_id INTEGER
);
