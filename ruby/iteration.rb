# def say_hello
# 	puts "Hello!"
# 	yield("Jake")
# end

# say_hello { |name| puts "How are you, #{name}?"}

grocery_list = ["bread", "milk", "ice-cream", "pizza", "pop"]
ocean_character = { "Brad Pitt" => "Rusty", "George Clooney" => "Danny", "Matt Damon" => "Sam", "Gary" => "John" }

p grocery_list
p ocean_character

# grocery_list.each { |item| puts "We need some #{item}."}

# p grocery_list

# grocery_list.map! do |item| 
# 	puts item + " BADLY" 
# 	item + " BADLY"
# end

# p grocery_list

# ocean_character.each do |actor, role|
# 	puts "In the Oceans series, #{actor} plays #{role}."
# end

# p ocean_character
# p grocery_list

# grocery_list.delete_if { |item| item.start_with?("m") }
# #this should delete the milk
# p grocery_list

# grocery_list.keep_if { |item| item.start_with?("b") }
# #this will return ONLY bread (or anything else that begins with b)
# p grocery_list

# grocery_list.select! { |item| item.start_with?("b") }
# p grocery_list

# grocery_list.delete_if { |item| item.start_with?("p") }
# p grocery_list


# ocean_character.delete_if { |actor, role| actor.start_with?("G")}
# p ocean_character

# ocean_character.keep_if { |actor, role| role.start_with?("D")}
# p ocean_character

# ocean_character.select! { |actor, role| role.start_with?("D")}
# p ocean_character

# ocean_character.delete_if { |actor, role| actor.start_with?("G")}
# p ocean_character






















