RSpec.describe "example" do
  # fake class object
  it "example 1" do
    fake = double :fake
    expect(fake).to be
    # .to be means it exist
  end

  # fake class object with a method
  it 'example 2' do
    fake = double(:fake_class, greet: "Hello World")
    expect(fake.greet).to eq "Hello World"
  end

  # fake class object with a method(arguement)
  it 'example 3' do
    fake = double :fake
    expect(fake).to receive(:greet).with("inserted_arguement").and_return("Hello, inserted_arguement")
    expect(fake.greet("inserted_arguement")).to eq "Hello, inserted_arguement"
  end
end