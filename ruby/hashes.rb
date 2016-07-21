design_client = {}

puts "Please enter the following information:"

print "Name: "
design_client[:name] = gets.chomp.capitalize


print "Address: "
design_client[:address] = gets.chomp.capitalize


print "Email: "
design_client[:email] = gets.chomp.capitalize


print "Allegies to materials? (y/n): "
design_client[:allergies] = gets.chomp.capitalize
	if design_client[:allergies] == "y"
		design_client[:allergies] = true
	else
		design_client[:allergies] = false
	end

wallpaper_types = [:paisley, :chevrons, :photo_realistic, :abstract]

def wallpaper(style)
  print "Do you like #{style} wallpaper? (y/n) "
  response = gets.chomp.downcase  
  if response == "y"
    true
  elsif response == "n"
    false
  end
end

wallpaper_types

wallpaper_types.each do |style|
  design_client[style] = wallpaper(style)
end

puts "-----"
#puts design_client

puts "Hello #{design_client[:name]}, here's a summary of what you've told us:"
puts "Address: #{design_client[:address]}"
puts "Email: #{design_client[:email]}"
puts "Your statement translated to #{design_client[:allergies]}, when asked about allergies"
puts "Your wallpaper preferences in terms of true and false are as follows:"
puts "Paisley: #{design_client[:paisley]}"
puts "Chevrons: #{design_client[:chevrons]}"
puts "Photo-realistic: #{design_client[:photo_realistic]}"
puts "Abstract: #{design_client[:abstract]}"
puts "-----"


puts "Is this what you wanted for your profile? (y/n)"
profile_approve = gets.chomp
  if profile_approve == "y"
    puts "Great! Have a wonderful day!"
  else
    puts "Hmm, well which aspect do you want to change? "
    print design_client.keys
    change = gets.chomp.to_sym
      if change == :paisley || change == :chevrons || change == :photo_realistic || change == :abstract
        wallpaper(change)
    #add conditional for allergies
      elsif change == :allergies
        print "Allegies to materials? (y/n): "
        design_client[:allergies] = gets.chomp
          if design_client[:allergies] == "y"
            design_client[:allergies] = true
          else
            design_client[:allergies] = false
          end
      else
        puts "What would you like to change this aspect to?"
        fix = gets.chomp
        design_client[change] = fix
      end
  end

  
puts "Have a wonderful day!"
  
puts "Name: #{design_client[:name]}"
puts "Address: #{design_client[:address]}"
puts "Email: #{design_client[:email]}"
puts "Your statement translated to #{design_client[:allergies]}, when asked about allergies"
puts "Your wallpaper preferences in terms of true and false are as follows:"
puts "Paisley: #{design_client[:paisley]}"
puts "Chevrons: #{design_client[:chevrons]}"
puts "Photo-realistic: #{design_client[:photo_realistic]}"
puts "Abstract: #{design_client[:abstract]}"
