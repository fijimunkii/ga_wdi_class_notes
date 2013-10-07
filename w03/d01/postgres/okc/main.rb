require 'sinatra'
require 'sinatra/reloader' if development?

require 'pg'

get '/' do
	db_connection = PG.connect(
		:dbname => 'pet_factory_db',
		:host => 'localhost'
	)
end