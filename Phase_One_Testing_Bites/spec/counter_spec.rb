require 'Counter'

RSpec.describe Counter do
  it "default count of zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
    # result = counter.report
    # expect(result).to eq "Counted to 0 so far."
  end

  it "counts the number the user has added" do
    count = Counter.new
    count.add(50)
    result = count.report()
    expect(result).to eq "Counted to 50 so far."
  end

  it "reports a count of all added values" do
    count = Counter.new
    count.add(50)
    count.add(55)
    count.add(15)
    result = count.report()
    expect(result).to eq "Counted to 120 so far."
  end
end