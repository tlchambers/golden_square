require 'present'

RSpec.describe Present do
  it "fails" do
    no_content = Present.new
    expect { no_content.unwrap}.to raise_error "No contents have been wrapped."
  end

  it "output to show contents" do
    contents = Present.new
    contents.wrap("abe")
    expect(contents.unwrap).to eq "abe"
  end

  it "fails, already wrapped, and wrapping again" do
      add_more_contents = Present.new
      add_more_contents.wrap("abc")
      expect { add_more_contents.wrap("def")}.to raise_error "A contents has already been wrapped."
  end
end
