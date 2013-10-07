require 'pg'
require 'faker'

db_connection = PG.connect(
	:dbname => 'okstupid',
	:host => 'localhost'
)

50.times do
	sql = "INSERT INTO users (username) VALUES ('#{Faker::Name.name}')"
	db_connection.exec(sql)
end

sql = "SELECT * FROM users"
response = db_connection.exec(sql)

puts response.entries.size

db_connection.close