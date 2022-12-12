require_relative '../lib/count_words'

RSpec.describe "#count_words" do

  it 'It counts the number of words of the given string' do
    expect(count_words("The fox jumps etc.")).to eq 4
  end
  it 'It counts the number of words of the given string' do
    expect(count_words("The fox jumps over the light brown fence")).to eq 8
  end
  it 'Fails if no string given' do
    expect{count_words("")}.to raise_error "No string given"
  end
end