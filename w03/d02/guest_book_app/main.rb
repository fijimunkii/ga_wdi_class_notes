require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  erb :index
end

get '/guests/new' do
  erb :new_message
end

post '/guests' do
  name = params[:name]
  message = params[:message]
  db_conn = PG.connect( :dbname => 'guest_book_db', :host => 'localhost' )
  sql = "INSERT INTO guests (name, message) VALUES ('#{name}', '#{message}')"
  db_conn.exec(sql)
  sql = "SELECT * FROM guests"
  response = db_conn.exec(sql)
  @guests = response.entries
  erb :guests
end
