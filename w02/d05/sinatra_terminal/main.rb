require 'sinatra'
require 'sinatra/reloader' if development?



get '/' do
	`#{params[:terminal_input]}` if params[:terminal_input]
	@previous_lines ||= ''
	@previous_lines += "#{params[:terminal_input]}<br />" if params[:terminal_input]
	erb :terminal
end