-- create a db called p90x_db

-- create tables
CREATE TABLE weekdays (
  id SERIAL PRIMARY KEY,
  exercise VARCHAR
);

CREATE TABLE weekends (
  id SERIAL PRIMARY KEY,
  exercise VARCHAR
);


-- insert test data

INSERT INTO weekdays (exercise)
VALUES ('benchpress'), ('calf raise'), ('squat thrust'), ('sitting');

INSERT INTO weekends (exercise)
VALUES ('spinning'), ('benchpress'), ('running'), ('squat thrust');
