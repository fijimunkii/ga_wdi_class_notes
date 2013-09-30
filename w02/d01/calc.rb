require 'sinatra'
require 'sinatra/reloader' if development?
require 'Faker'


# a user should be able to go to
# /calc/7/times/8
# and it should display 56

get '/calc/:firstnum/:operator/:secondnum' do
  dude = Faker::Name.name
  firstnum = params[:firstnum].to_i
  secondnum = params[:secondnum].to_i

  case params[:operator]

    when "plus", "+", "add"
      "#{dude} says #{firstnum + secondnum}"

    when "minus", "-", "subtract"
      "#{dude} says #{firstnum - secondnum}"

    when "times", "*"
      "#{dude} says #{firstnum * secondnum}"

    when "divided", "divided by", "/"
      "#{dude} says #{firstnum / secondnum}"

    when "exp", "to the"
      "#{dude} says #{firstnum ** secondnum}"

    else
      "#{dude} thinks you're just making it up"
  end
end