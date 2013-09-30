thoughts = {
  "the meaning of life" => 42,
  :jonathan => "awesome",
  9001 => :goku
}

thoughts["bill gates"] = 9999999999
thoughts[:paris] = "pink"
thoughts[2000] = "The year the world was supposed to end"

new_hash = Hash.new

# new_keys = thoughts.values
# new_values = thoughts.keys

# i = 0
# while i <= new_keys.length
#   new_hash[new_keys[i]] = new_values[i]
#   i += 1
# end

#thoughts.each_pair do |x, y| new_hash[y] = x end

new_hash = thoughts.invert

p new_hash