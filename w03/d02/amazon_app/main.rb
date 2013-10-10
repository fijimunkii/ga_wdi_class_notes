require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/books' do
  db_conn = PG.connect(:dbname => 'amazon_db', :host => 'localhost')
  sql = "SELECT * FROM books"
  books = db_conn.exec(sql)
  books.to_s
end

post '/books' do
  binding.pry
end

get '/books/new' do

end
