require_relative 'gameclass'

describe WordGame do
  let (:wordgame) { WordGame.new("dog") }

  it "splits the word into an array of letters" do 
    expect(wordgame.word_split).to eq ["d","o","g"]
  end

  it "allows a letter guess and fills in the blanks" do
    wordgame.word_split
    expect(wordgame.guess_letter("d")).to eq ["d","_","_"]
  end

  it "doesn't allow more guesses than letters" do
    wordgame.word_split
    wordgame.guess_letter("d")
    wordgame.guess_letter("o")
    wordgame.guess_letter("g")
    expect(wordgame.guess_letter("f")).to eq "You're an absolute loser! The answer was dog"
  end

  

end
