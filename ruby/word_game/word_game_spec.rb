require_relative('word_game')

describe WordGame do
  let(:word) { WordGame.new("chill") }

  it "stores user's guessed letters" do
    expect(word.guess('c')).to eq ["c"]
  end

  it "checks if user is out of guesses" do
    expect(word.out_of_guesses).to eq false # Not quite sure how a better test for this method could be written, will do more research.
  end

  it "censors secret word except for guessed letters" do
    expect(word.censor).to eq "*****"
  end

  it "checks users guess for a word match" do
    expect(word.check_for_match("chill")).to eq true
  end
end
