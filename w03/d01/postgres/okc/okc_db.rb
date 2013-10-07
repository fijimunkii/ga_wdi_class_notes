require 'pg'

db_connection = PG.connect(
	:dbname => 'okstupid',
	:host => 'localhost'
)

sql = "CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR NOT NULL UNIQUE,
	image_url VARCHAR DEFAULT 'funnyface.png',
	is_active BOOLEAN DEFAULT true,
	bio TEXT
)"

db_connection.exec(sql)

db_connection.close