# loads up sinatra  # port 4567
require 'sinatra'
require 'sinatra/reloader' if development?

# routes

get "/" do
  "<html><h1>hello and welcome</h1></html>"
end

get "/puppies" do
  # display the puppies name, age
  # if he is cute that you love him.
  "The puppy's name is #{params[:name]}, he is #{params[:age]} dog years old."
end

get "/kittens" do
  "boom"
end

get "/search" do
  "You searched for #{params[:q]}, that is #{params[:q].length} wasted keystrokes."
end