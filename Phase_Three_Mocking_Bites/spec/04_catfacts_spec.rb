require '04_catfacts'

RSpec.describe CatFacts do
  it 'provides a fact about cats' do
    fake_double = double(:fake_requester)
    expect(fake_double).to receive(:get).with("https://catfact.ninja/fact").and_return('{"fact":"Cats have 3 eyelids.","length":20}')
    fact = CatFacts.new(fake_double)
    expect(fact.provide).to eq 'Cat fact: Cats have 3 eyelids.'
  end

  # it 'provides a fact about cats' do
  #   fake_request = double :requester
  #   expect(fake_request).to receive(:get).with("https://catfact.ninja/fact").and_return('{"fact":"Cats have 3 eyelids.","length":20}')
  #   catfact = CatFacts.new(fake_request)
  #   expect(catfact.provide).to eq '{"fact":"Cats have 3 eyelids.","length":20}'
  # end
end
