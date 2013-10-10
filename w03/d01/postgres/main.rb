require 'sinatra'
require 'sinatra/reloader' if development?

require 'pg'

get '/' do
	@title = "OKC Home"
	db_connection = PG.connect(
		:dbname => 'pet_factory_db',
		:host => 'localhost'
	)
	sql = "SELECT * FROM users"
	response = db_connection.exec(sql)
	db_connection.close

	@users = response.entries

	erb :index
end

get '/new_user' do
	@title = "New User!"
	
end