require 'sinatra'
require 'sinatra/reloader' if development?
require 'Faker'

get '/' do
  "welcome to our homepage"
end

get '/say_hi/:name' do
  name = params[:name]
  "hi there #{name}"
end

get '/say_hi/:name/:last' do
  name = params[:name]
  last = params[:last]
  "hi there #{name} #{last}"
end


# make a business card generator
# enter a user's name in the url
# display a random job title

# /bizcard/phil => 'hambonalony phil'

get '/bizcard/:firstname/:lastname' do
  firstname = params[:firstname]
  lastname = params[:lastname]
  "<div style=\"margin: 0 auto; width: 100%;\"><font size=\"12\">#{firstname} #{lastname}</font><br />#{Faker::Name.title}</div>"
end

# a user should be able to go to
# /calc/7/times/8
# and it should display 56

get '/calc/:firstnum/:operator/:secondnum' do

  firstnum = params[:firstnum].to_i
  secondnum = params[:secondnum].to_i

  case params[:operator]

    when "plus", "+", "add"
      "#{firstnum + secondnum}"

    when "minus", "-", "subtract"
      "#{firstnum - secondnum}"

    when "times", "*"
      "#{firstnum * secondnum}"

    when "divided", "divided by", "/"
      "#{firstnum / secondnum}"

    when "exp", "to the"
      "#{firstnum ** secondnum}"

    else
      "your just making it up"
  end
end