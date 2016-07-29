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
    @word_length = word_arr.length
    @word_length.times do
      @blank_arr << "_"
    end
    return @word_arr
  end


  def guess_letter(letter)
    unless @guessed_letters.include?(letter)
      @guessed_letters << letter
      @guess_count += 1
    end

    if @guess_count > @word_length
      "You're an absolute loser! The answer was #{@word}"
    else
      print @blank_arr
      puts " Keep trying!"
        if @word_arr.include?(letter)
          @blank_arr[@word_arr.index(letter)] = letter
          print @blank_arr
          return blank_arr
        end
    end
  end

end

# dog = WordGame.new("dog")

# dog.word_split
# dog.guess_letter("d")
# dog.guess_letter("o")
# dog.guess_letter("y")
# dog.guess_letter("y")
# dog.guess_letter("s")

