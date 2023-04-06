require '05_greeter'

RSpec.describe Greeter do
  it 'ask the user for their name and say hello' do
    io = double(:io)
    expect(io).to receive(:puts).with("What is your name?").ordered
    expect(io).to receive(:gets).and_return("Whiskey").ordered
    expect(io).to receive(:puts).with("Hello, Whiskey!").ordered
    greeter = Greeter.new(io)
    greeter.greet
  end
end