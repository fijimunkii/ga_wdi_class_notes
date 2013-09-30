names = ["Alex", "Jon", "Harry"]

names << "Morgan"
names << "Travis"

names.push("Quin")
names.push("Tasha")

names.unshift("Diego")
names.unshift("Ana")

names.shift
names.pop

names.count

names.each do |x| print x end

names.shuffle

names.include?("Sally")

names.each_with_index do |name, index| puts "#{name} at #{index}" end

names_apostrophie = names.map do |x| x + "'s" end

names.map! do |x| x + "'s" end