class Cat
	def initialize(name)
		@name = name
	end

	def meow
		"meowwwwww"
	end

	def pur
		"prrrr prrrrr prrrr"
	end
end

class Person
	def initialize(given_name, social, gender)
		@name = given_name
		@age = (1..100).to_a.sample
		@social = social
		@gender = gender
	end

	def change_name(new_name)
		@name = new_name
	end

	def say_name
		@name
	end
end

class Car

	attr_accessor :price, :make, :model, :color, :passengers, :driver

	def initialize(price, make, color, model)
		@price = price
		@make = make
		@model = model
		@color = color
		@passengers = []
		@driver = Person.new("Nobody yet","","")
	end

	def set_color(color)
		@color = color
	end

	def get_color
		"this car is #{@color}"
	end

	def add_rider(passenger)
		@passengers << passenger
	end

	def kick_out(mood = "good")
		dude = @passengers.shift
		puts "See you later, #{dude}!" if mood == "good"
		puts "Get the hell out, #{dude}!" if mood != "good"
	end

	def set_driver(name)
		@driver = name
	end

	def list
		"#{@driver.say_name} is driving #{@passengers.join(", ").split.map(&:capitalize).join(" ")}."
	end

	def where_is
		puts "dude, where's my car?"
	end
end

class Animal
	def initalize
		@belly = []
	end

	def eat(food)
		@belly << food
	end
end