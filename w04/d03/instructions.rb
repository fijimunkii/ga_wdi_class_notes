require 'httparty'
require 'json'

url = "http://guarded-sands-6955.herokuapp.com"
url += '/morning/instructions'

instructions = HTTParty.get(url, {:body => {:say => 'please'}})

json_instructions = JSON.parse(instructions)

p json_instructions
