def ask(question)
	puts question
	gets.chomp
end

NICKNAMES = {
	friend: [
		"funny",
		"butterfingers",
		"sweet cheeks"
	],
	frenemy: [
		"the booger",
		"weiner",
		"stinky"
	]
}

def make_a_nickname
	real_name = ask("gimme a name")
	real_name = real_name.split
	friend_type = ask("friend or frenemy")
	friend_type = friend_type.to_sym
	puts "#{NICKNAMES[friend_type].sample} #{real_name.first}" if real_name.size < 2
	puts "#{real_name.first} #{NICKNAMES[friend_type].sample} #{real_name.last}" if real_name.size > 1
end

make_a_nickname