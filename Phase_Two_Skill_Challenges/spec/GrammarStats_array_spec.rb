require 'GrammarStats_array'

RSpec.describe GrammarStats_array do
  it "fails" do
    sentence = GrammarStats_array.new
    expect{sentence.check("")}. to raise_error "No text provided!"
  end

  it 'text to returns false if text does not start with a capital letter' do
    sentence = GrammarStats_array.new
    result = sentence.check("hello world")
    expect(result).to eq false
  end

  it 'checks if text starts with a capital letter and ends with !' do
    sentence = GrammarStats_array.new
    result = sentence.check("Hello world!")
    expect(result).to eq true
  end

  it 'checks if text starts with a capital letter and ends with ?' do
    sentence = GrammarStats_array.new
    result = sentence.check("Hello world? How are you today?")
    expect(result).to eq true
  end
  
  it 'checks if text starts with a capital letter and ends with .' do
    sentence = GrammarStats_array.new
    result = sentence.check("Hello world? How are you today.")
    expect(result).to eq true
  end
  
  it 'checks when text starts with a  capital letter but does not ends with appropriate sentence ending' do
    sentence = GrammarStats_array.new
    result = sentence.check("Hello world? How are you today")
    expect(result).to eq false
  end

  context "if one string checked" do
    it "shoud return 100%" do
      sentence = GrammarStats_array.new
      sentence.check("One two three.")
      expect(sentence.percentage_good).to eq "100%"
    end
  end

  context "if two strings checked snd one is invalid" do
    it "should return 50%" do
      sentence = GrammarStats_array.new
      sentence.check("One two three.")
      sentence.check("One two three")
      expect(sentence.percentage_good).to eq "50%"
    end
  end

  context "if three strings checked and one is invalid" do
    it "should return 67%" do
      sentence = GrammarStats_array.new
      sentence.check("One two three.")
      sentence.check("One two three")
      sentence.check("One two three!")
      expect(sentence.percentage_good).to eq "67%"
    end
  end
end

