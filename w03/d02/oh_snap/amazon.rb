require 'pg'

db_conn = PG.connect(
  :dbname => 'amazon_db',
  :host => 'localhost'
  )

# sql = 'SELECT * FROM books'

# response = db_conn.exec(sql)

# response.entries.each do |x|
#   sql = "UPDATE books SET title = '#{x['title'].split.map(&:capitalize).join(' ')}' WHERE id = #{x['id']}"
#   db_conn.exec(sql)
# end

sql = 'SELECT title, id FROM books'
response = db_conn.exec(sql)
response.entries.each do |book|
  puts "#{book['id']} - #{book['title']}"
end

# db_conn.close

p 'If you would like to delete a book, enter its number'
num_del = gets.chomp.to_i

sql = "DELETE FROM books WHERE id = #{num_del}"
db_conn.exec(sql)

sql = 'SELECT title FROM books'
response = db_conn.exec(sql)
p response.entries
