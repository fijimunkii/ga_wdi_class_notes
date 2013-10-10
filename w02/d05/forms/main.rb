# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging gems
require 'pry'
require 'rainbow'

get '/' do
  puts params.to_s.background(:green) # prints out to terminal
  erb :index
end

get '/search' do
	erb :search
end

get '/results' do
	@query = params[:query]
	erb :results
end

get '/apt_search' do
	erb :apt_search
end