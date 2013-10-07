-- this creates the kittens table

CREATE TABLE kittens (
	-- these are the kittens attributes
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	age INTEGER DEFAULT 0,
	is_cute BOOLEAN DEFAULT true
);

INSERT INTO kittens (name, age, is_cute) VALUES ('merry', 7, false);
INSERT INTO kittens (name, age, is_cute) VALUES ('pippin', 5, false);
INSERT INTO kittens (name) VALUES ('little one');
INSERT INTO kittens;