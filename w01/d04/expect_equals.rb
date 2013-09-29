def expect_equals(a, b)
	a == b
end

user_input = nil

def ask(question)
	puts question
	@user_input = gets.chomp
end

def ask_num(question)
	ask(question).to_f
end

def calculate_distance(minutes, rate)
	minutes * rate/60
end

while @user_input != "q"
	speed = ask_num("How fast are you going?")
end