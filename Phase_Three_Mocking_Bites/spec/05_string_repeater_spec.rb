require '05_string_repeater'

RSpec.describe StringRepeater do
  it 'ask the user enter some and returns the text as a string' do
    string = double :string
    expect(string).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(string).to receive(:puts).with("Please enter a string: ").ordered
    expect(string).to receive(:gets).and_return("TWIX").ordered
    expect(string).to receive(:puts).with("Please enter a number of repeats: ").ordered
    expect(string).to receive(:gets).and_return("10").ordered
    expect(string).to receive(:puts).with("Here is your result: ").ordered
    expect(string).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    your_text = StringRepeater.new(string)
    your_text.run
  end
end