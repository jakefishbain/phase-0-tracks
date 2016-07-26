# module Shout
  
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end
#   def self.yell_happily(words)
#     words + "!!!" + ":)"
#   end

# end

# p Shout.yell_angrily("hi")
# p Shout.yell_happily('hi')


module Shout
  
  def happy_yell(words)
    puts "I am happy to say: #{words}"
  end

  def mad_yell(words)
    puts "I am mad to say: #{words}"
  end

end

class Family
  include Shout
end

class Friend
  include Shout
end

brad = Friend.new
sue = Family.new

brad.happy_yell("hi!")
sue.mad_yell("hi!")
