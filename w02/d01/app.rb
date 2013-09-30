require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/time' do
  erb :time
end