def ask(question)
	puts question
	@user_input = gets.chomp
end

@user_input = nil

def ask_num(question)
	ask(question).to_f
end

while
	name = ask("What is your name?").downcase
	break if name == "q"
	puts "Good morning, #{name.split.map(&:capitalize).join(" ")}!" if name != "jonathan"
end