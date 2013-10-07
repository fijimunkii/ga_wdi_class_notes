require 'pg'

db_connection = PG.connect(
	:dbname => 'pet_factory_db',
	:host => 'localhost'
)

sql = "SELECT * FROM puppies"
response = db_connection.exec(sql)
puts response.entries.size

sql = "INSERT INTO puppies (name, is_cute, age) VALUES ('sam', true, 5)"
db_connection.exec(sql)
puts "woof"

sql = "SELECT * FROM puppies"
response = db_connection.exec(sql)
puts response.entries.size

db_connection.close