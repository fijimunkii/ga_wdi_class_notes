require 'sinatra'
require 'sinatra/reloader' if development?
require 'HTTParty'

get '/' do
	response = HTTParty.get("http://graph.facebook.com/friendjonathanleung")
	first_name = response["first_name"]
	first_name
end

get '/:username' do
	@name = params[:username]
	response = HTTParty.get("http://graph.facebook.com/#{@name}")
	@first_name = response["first_name"]
	@last_name = response["last_name"]
	erb :httparty
end