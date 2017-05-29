require_relative 'game'

describe Hangman do
  let(:hangman) { Hangman.new("unicorn") }

  it "guesses a non-reccuring letter" do
    expect(hangman.guess("u")).to eq "u______"
  end

  it "guesses a reccuring letter" do
    expect(hangman.guess("n")).to eq "_n____n"
  end

  it "guesses a non-existing letter" do
    expect(hangman.guess("k")).to eq "_______"
  end

  it "checks if input rejection with an exisiting letter is working" do
    hangman.guess("u")
    hangman.guess("u")
    expect(hangman.guesses).to eq 1
  end

  it "checks if input rejection with a non exisiting letter is working" do
    hangman.guess("k")
    hangman.guess("k")
    expect(hangman.guesses).to eq 1
  end

  it "checks to see if guess counter works correctly with mixed input" do
    letters = ["u","n","k","k","w"]
    letters.each do |let|
      hangman.guess(let)
    end
    expect(hangman.guesses).to eq 4
  end

  it "checks if win conditions are met" do
    letters = ["u","n","i","c","o","r","n"]
    letters.each do |let|
      hangman.guess(let)
    end
    expect(hangman.win).to eq true
  end

  it "checks if too many guesses" do
    letters = ["a","b","c","d","e","f","g","h","i","j"]
    letters.each do |let|
      hangman.guess(let)
    end
    expect(hangman.guesses == hangman.maxguesses).to eq true
  end

end