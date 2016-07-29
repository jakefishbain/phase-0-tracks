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

  
end
