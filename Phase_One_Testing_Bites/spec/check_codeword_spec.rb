require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "return a correct message if string matches codeword" do
    result = check_codeword("horse")
    expect(result). to eq "Correct! Come in."
  end

  it "returns a wrong message if given the wrong codeword" do
    result = check_codeword("yellow")
    expect(result).to eq "WRONG!"
  end

  it "returns 'close' message if first or last letter of string matches codeword" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "returns a wrong messge if codeword with just correct first letter" do
    result = check_codeword("holiday")
    expect(result).to eq "WRONG!"
  end

  it "returns a wrong messge if codeword with just correct last letter" do
    result = check_codeword("pope")
    expect(result).to eq "WRONG!"
  end
end

