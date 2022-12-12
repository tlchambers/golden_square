require 'greet'

RSpec.describe "greent method" do
  it "return string, Hello, John!" do
    result = greet("John")
    expect(result). to eq "Hello, John!"
  end
end