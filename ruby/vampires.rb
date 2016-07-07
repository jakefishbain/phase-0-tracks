puts "Hello, what is your name?"
	name = gets.chomp.downcase
puts "How old are you, please specify the year you were born"
	year = gets.chomp.to_i
puts "Our cafeteria serves delicious garlic bread, should we put some aside for you? (y/n)"
	garlic = gets.chomp.downcase
puts "Would you like to enroll in the company's health insurance benefits? (y/n)"
	insurance = gets.chomp.downcase

current_year = 2016

puts "Dear #{name}, according to our records you have identified yourself as #{current_year - year} years old.  When asked if you would like some scrumptious garlic bread, you said '#{garlic}'.  Additionally. when given the option to opt in our out of our insurance, you stated #{insurance}. Please allow our team to evaluate your application and wait for a response."

if (current_year - year <= 100) && garlic == "y"
	puts "Probably not a vampire"
elsif (current_year - year >= 100) && (garlic == "n" || insurance == "n")
	puts "Probably a vampire!"
elsif (current_year - year >= 100) && garlic == "n" && insurance == "n"
	puts "Almost certainly a vampire!"
elsif name == "drake cula" || name == "tu fang"
	puts "Definitely a vampire, nice try!"
else
	puts "Results inconclusive, please come in for a BLOOD test!"
end


