require '04_activity_suggester'

RSpec.describe ActivitySuggester do
  it 'suggests an activity' do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with("www.boredapi.com", "/api/activity").and_return('{"activity":"Learn to sew on a button","type":"education","participants":1,"price":0.05,"link":"","key":"8731971","accessibility":0.1}')
    activity_suggester = ActivitySuggester.new(fake_requester)
    expect(activity_suggester.suggest).to eq "Why not: Learn to sew on a button"
  end
end

