require "gratitudes"

RSpec.describe Gratitudes do
  it "creates a new gratitudes instance" do
    gratitudes = Gratitudes.new
    expect(gratitudes.gratitudes).to eq []
  end

  it "check format 'Be grateful for: '" do
    gratitude = Gratitudes.new
    result = @gratitudes
    expect(gratitude.format).to eq "Be grateful for: "
  end

  it "checks the added argument is pushed into the array" do
    gratitude1 = Gratitudes.new
    expect(gratitude1.add("it's summer")).to eq ["it's summer"]
  end

  it "checks the default text of format" do
    gratitude2 = Gratitudes.new
    expect(gratitude2.format).to eq "Be grateful for: "
  end 

  it "checks the return 'formatted' once user adds a gratitude" do
    gratitude3 = Gratitudes.new
    gratitude3.add("sunshine")
    expect(gratitude3.format).to eq "Be grateful for: sunshine"
  end
end