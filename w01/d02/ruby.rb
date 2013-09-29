puts "What is the temperature?"
temperature = gets.chomp
if temperature.to_i < 60
	puts "Wear a jacket before you have fun."
else
	puts "Go have fun!"
end