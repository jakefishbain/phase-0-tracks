class Santa
  
  attr_reader :gender
  attr_accessor :age, :ethnicity

  #INTIALIZE METHOD
  def initialize(human_name, gender, ethnicity)
    @human_name = human_name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher","Dancer", "Prancer", "Vixen", "Comet", "Cupid","Donner", "Blitzen"]
    @age = rand(0..140)  
  end

  #INSTANCE METHODS
  def speak
    puts "Ho, ho, ho! Haaaaaaaappy Holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "Yummy!, those #{type} cookies were delicious!"
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name.capitalize)
      move_index = @reindeer_ranking.index(reindeer_name.capitalize)
      @reindeer_ranking << @reindeer_ranking[move_index]
      @reindeer_ranking.delete_at(move_index)
      puts "#{reindeer_name.capitalize} is now at the end of the line, BAD BOY!"
    end
  end

  def about
    puts "Name: #{@human_name}"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}"
    puts "---"
  end

end

# #USER INTERFACE
# puts "How many Santas do you need at your event?"
# santa_no = gets.chomp.to_i

# santas = []
# index = 1
# santa_no.times do 
#   puts "What is Santa ##{index}'s real name?"
#   human_name = gets.chomp
#   puts "What is the gender of santa ##{index}, #{human_name}?"
#   gender = gets.chomp
#   puts "What ethnicity is ##{index}, #{human_name}?"
#   ethnicity = gets.chomp
#   santas << Santa.new(human_name, gender, ethnicity) 
#   index += 1
# end

# #PRINT DATA TO USER
# santas.each do |santa| 
#   puts santa.about
# end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["Jake", "John", "Sally", "Alex", "Brad", "Jessie", "Emma"]

10.times {santas << Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample) }

santas.each do |santa|
  santa.about
end








































