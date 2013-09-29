def ask(question)
	puts question
	gets.chomp
end

NICKNAMES = [
	"funny",
	"butterfingers",
	"sweet cheeks",
]

def make_a_nickname
	real_name = ask("gimme a name")
	real_name = real_name.split
	puts "#{real_name.first} #{NICKNAMES.sample}" if real_name.size < 2
	puts "#{real_name.first} #{NICKNAMES.sample} #{real_name.last}" if real_name.size > 1
end

make_a_nickname