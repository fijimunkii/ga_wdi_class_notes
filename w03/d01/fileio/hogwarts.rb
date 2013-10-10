# welcoem to hogwarts!
# allow user to enter a student's name and house
# save it as a csv file
# 

require 'pry'

file = File.open("hogwarts.csv", "a+")

puts "Welcome to the Hogwart's!"
puts
puts "Enter a student name."
name = gets.chomp
puts
puts "Which house would #{name} prefer?"
house = gets.chomp
puts
houses = %w(Gryffendor Hufflepuff Ravenclaw Slytherin)
house = houses.sample
file.puts("#{name},#{house}")

file.close

file = File.open("hogwarts.csv", "r")

students = Array.new
headers = Array.new

file.first.chomp.split(',').each do |x| headers << x.to_sym end

file.each do |line|
	line_arr = line.chomp.split(',')
	student_hash = Hash.new
	student_hash[headers[0]] = line_arr[0]
	student_hash[headers[1]] = line_arr[1]
	students << student_hash
end

p students

file.close