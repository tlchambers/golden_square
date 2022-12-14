require 'Gratitudes2'


# we do not need a string after 'describe' because RSpec expect to be working with CLASSES, because it is based on object-orientated approach.
# we can just put the class_name (the class we are testing on)
RSpec.describe Gratitudes2 do
  # We should test the behaviour of the class rather than individual methods.
  # We should come up with examples of that class being used.
  it "adds and return a list of gratitudes" do
    gratitudes = Gratitudes2.new
    gratitudes.add("your cat")
    gratitudes.add("nice people")
    expect(gratitudes.format).to eq "Be grateful for: your cat, nice people"
  end

  it "adds and return a list of gratitudes" do
    gratitudes = Gratitudes2.new
    gratitudes.add("your dog")
    expect(gratitudes.format).to eq "Be grateful for: your dog"
  end

  it "fails when nothing is added" do
    gratitudes = Gratitudes2.new
    expect{ gratitudes.format}.to raise_error "No gratitude has been added"
  end

  it "fails when an empty string is added in 'add' method" do
    gratitudes = Gratitudes2.new
    expect{ gratitudes.add("")}.to raise_error "Cannot have empty string"
  end
end