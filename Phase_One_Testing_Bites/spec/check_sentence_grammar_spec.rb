require 'check_sentence_grammar'

RSpec.describe "check_sentence_grammar method" do
  it "checks sentence starts with capital letter and ends with a sentence ending" do
    result = check_sentence_grammar("Hello?")
    expect(result).to eq true
  end

  it "checks sentence with capital letter but no appropraite sentence ending" do
    result = check_sentence_grammar("Hello")
    expect(result).to eq false
  end

  it "checks sentence that starts wit lowcase letter but has appropraite sentence ending" do
    result = check_sentence_grammar("hello!")
    expect(result).to eq false
  end

  it "fails" do
    expect{ check_sentence_grammar("") }.to raise_error "No sentence provided."
  end
end
