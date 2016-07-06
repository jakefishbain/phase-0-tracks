puts "What is the hamster\'s name?"
name = gets.chomp
puts "What volume level can you handle? (1 to 10)"
volume = gets.chomp.to_i
puts "What color fur do you like?"
color = gets.chomp
puts "Is the hamster a good candidate for adoption? (Yes/No)"
candidate = gets.chomp.downcase
  if candidate == "yes"
    candidate = "good"
  else
    candidate = "bad"
  end
puts "What is the hamster\'s estimated age?"
age = gets.strip
if age.empty?
  age = nil
else
  age = age.to_i
end

puts "The hamster\'s name is #{name}. Its volume is #{volume} and its color is #{color}."
if age == nil
  puts "This hamster is a #{candidate} candidate."
else
  puts  "The candidate\'s age is #{age}. This hamster is a #{candidate} candidate."
end