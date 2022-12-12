require 'text_validator'

RSpec.describe "testing text_validator method" do
  it "checks when added text missing '#' at the start of TODO" do
    result = text_validator("some text TODO")
    expect(result).to eq false
  end
end









# it "checks when added text include #TODO" do
# result = text_validator("some text #TODO")
# expect(result).to eq true
# end

# it "checks when added text include '#TODO' at random place in text" do
# result = text_validator("some text #TODO some text")
# expect(result).to eq true
# end

# it "checks when added text include '#TODO' at random place in text" do
# result = text_validator("#TODO some text, some more text")
# expect(result).to eq true
# end

# it "fails" do
# expect { text_validator("") }. to raise_error "No text provided"
# end