# class Puppy

#   def initialize
#     p "Initializing new puppy instance..."
#   end
  
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(n)
#     n.times { puts "Woof!" }
#   end
  
#   def roll_over
#     p "*rolls over*"
#   end
  
#   def dog_years(n)
#     dog_years = n*7
#     p dog_years
#     dog_years
#   end
  
#   def bite
#     p "That hurt!"
#   end
  
# end

# buddy = Puppy.new
# buddy.fetch("ball")
# buddy.speak(10)
# buddy.roll_over
# buddy.dog_years(2)
# buddy.bite



class Superhero
  
  def initialize
    p "Initializing a new Superhero instance"
  end
  
  def fly(place)
    p "I'm flying to #{place}!"
  end
  
  def punch(n)
    n.times { puts "POW!" }
  end
end

superman = Superhero.new
superman.fly("home")
superman.punch(3)

heroes = []
50.times { heroes << Superhero.new }

heroes.each do |hero|
  hero.fly("home")
  hero.punch(3)
end