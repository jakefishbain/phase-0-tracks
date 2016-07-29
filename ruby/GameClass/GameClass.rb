class WordGame
  
  def initialize(word)
    @guess_count = 0
    @word_arr = word.split('')
    @word_length = 0
    @blank_arr = []
    @word = word
    @guessed_letters = []
  end

  def word_split
    @word_length = @word_arr.length
    @word_length.times do
      @blank_arr << "_"
    end
    return @word_arr
  end

  
  def input_letter(letter)
    if @word_arr.include?(letter)
       @blank_arr[@word_arr.index(letter)] = letter
       print @blank_arr
       return @blank_arr
    else 
      print @blank_arr
    end
  end
  
  
  def guess_letter(letter)
    input_letter(letter)
    
    unless @guessed_letters.include?(letter)
      @guessed_letters << letter
      @guess_count += 1
    end

    if @guess_count > @word_length
      puts " You're an absolute loser! The answer was #{@word}"
      " You're an absolute loser! The answer was #{@word}"
    elsif @blank_arr.join == @word
      puts " Good job, you got it!"
      " Good job, you got it!"
    else
      puts " Keep trying!"
    end
  end
end



dog = WordGame.new("dog")

dog.word_split
dog.guess_letter("d")
dog.guess_letter("o")
dog.guess_letter("s")
dog.guess_letter("g")
dog.guess_letter("d")

