require 'GrammarStats'

RSpec.describe GrammarStats do
  it 'text to returns fakse if text does not start with a capital letter' do
    sentence = GrammarStats.new
    result = sentence.check("hello world")
    expect(result).to eq false
  end

  it 'checks if text starts with a capital letter and ends with appropriate sentence-ending punctuation mark' do
    sentence = GrammarStats.new
    result = sentence.check("Hello world!")
    expect(result). to eq true
  end
end