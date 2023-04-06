require '08_track'

RSpec.describe Track do
  it 'constructs' do
    track1 = Track.new("song title1", 'by artist1')
    expect(track1.title).to eq 'song title1'
    expect(track1.artist).to eq 'by artist1'
  end

  describe '#format' do
    it 'formats the title and artist into a single string' do
      track1 = Track.new("song title1", 'by artist1')
      expect(track1.format).to eq 'song title1 by artist1'
    end
  end
end