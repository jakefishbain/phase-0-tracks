require_relative 'gameclass'

describe WordGame do
  let (:wordgame) { WordGame.new("dog") }

  it "splits the word into an array of letters" do 
    expect(wordgame.word_split).to eq ["d","o","g"]
  end

  it "inputs letter into a blank array" do
    wordgame.word_split
    expect(wordgame.input_letter("d")).to eq ["d","_","_"]
  end

  it "outputs error with too many guesses" do
    wordgame.input_letter("f")
    wordgame.input_letter("h")
    wordgame.input_letter("a")
    #wordgame.input_letter("p")
    expect(wordgame.guess_letter("p")).to eq " You're an absolute loser! The answer was dog"
  end


end
