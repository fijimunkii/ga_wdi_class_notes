require 'pg'

db_connection = PG.connect(
	:dbname => 'pet_factory_db',
	:host => 'localhost'
)

sql = 'SELECT * FROM puppies'

response = db_connection.exec(sql)

response.entries.each do |x|
	puts "#{x['name']} is a #{'cute' if x['is_cute'] == 't'} #{x['age']} year old puppy."
end

db_connection.close