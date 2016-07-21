=begin
-ask user to input real name
-split in WORDS, not characters (' ')
-switch first and last using reassignment in array
-create vowels array variable
-create consonants array variable
-split new switched name into individual chars ('')
-loop through iterating to change vowels to next and consonants to next using pre-made variables
-join and return new name as string with capitalization
=end

def next_letter(letter)
  vowels = ["a", "e", "i","o", "u", "A", "E", "I", "O", "U"]
  cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
  swapped = []
  if vowels.include?(letter)
    letter_index = vowels.index(letter)
    swapped.push(vowels[letter_index + 1])
  elsif cons.include?(letter)
    letter_index = cons.index(letter)
    swapped.push(cons[letter_index + 1])
  elsif letter == " "
    swapped.push(" ")
  end
  return swapped.join('')
end



def alias_manager(full_name)
  # puts "Hello, what is your real full name?"
  # full_name = gets.chomp
  name_split = full_name.split(' ')
  #swap first and last
  name_split[0], name_split[1] = name_split[1], name_split[0]
  name_split[0].insert(-1, ' ')
  letter_split = name_split.join('').split('')

  alias_name = ""
  letter_split.each do |letter| 
    alias_name += next_letter(letter)
  end
  print alias_name
  #output:  scrambled name
  return alias_name
end


answer = "SB"
sorted_names = []
full_names = []
until answer == 'quit'
  puts " "
  puts " "
  puts "Would you like to run the alias manager? Type 'y' to continue, type 'quit' to exit"
  answer = gets.chomp.downcase
  if answer == 'y'
  	puts "Type the first AND last name you would like to make an alias for using spaces."
  	full_name = gets.chomp
  	full_names.push(full_name)
    sorted_names.push(alias_manager(full_name))
  elsif answer == 'quit'
  	puts ""
    index = 0
    until index == sorted_names.length
    	puts "#{full_names[index]}'s alias name is #{sorted_names[index]}."
    	index += 1
    end 
  end
end

#one word name option





