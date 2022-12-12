require "report_length"

RSpec.describe "return the total number of characters of a string" do
  it "returns string \'This string was 4 characters long.\'" do
    result = report_length("four")
    expect(result).to eq "This string was 4 characters long."
  end

  it "returns string \'This string was 5 characters long.\'" do
    result = report_length("three")
    expect(result).to eq "This string was 5 characters long."
  end
end