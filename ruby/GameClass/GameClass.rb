class WordGame
  attr_accessor :guess_count, :is_over, :word_arr, :word_length, :blank_arr, :word

  def initialize(word)
    @guess_count = 0
    @is_over = false
    @word_arr = word.split('')
    @word_length = 0
    @blank_arr = []
    @word = word
    @guessed_letters = []
  end

  def word_split
    #@word_arr = @word.split('')
    @word_length = word_arr.length
    @word_length.times do
      @blank_arr << "_"
    end
    #print blank_arr
    return @word_arr
  end


  def guess_number
    if @guess_count > @guessed_letters.length
      puts "You're an absolute loser!"
    else
      puts "Keep trying!"
    end
  end


  def guess_letter(letter)
    unless @guessed_letters.include?(letter)
      @guessed_letters << letter
      @guess_count += 1
    end
    if @word_arr.include?(letter)
      @blank_arr[@word_arr.index(letter)] = letter
      print @blank_arr
    end
    return blank_arr
  end

end

# dog = WordGame.new("dog")

# dog.word_split
# dog.guess_letter("d")
# dog.guess_letter("o")
# dog.guess_letter("y")