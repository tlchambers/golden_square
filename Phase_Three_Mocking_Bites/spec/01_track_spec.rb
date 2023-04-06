require '01_track'

RSpec.describe Track do
  it 'matches when given a keyword in the title' do
    track = Track.new('one MATCHES two', 'by artist') do
      expect(track.matches?("MATCHES")).to eq true
    end
  end

  it 'matches when given a keyword in the artist' do
    track = Track.new('one two', 'by MATCHES artist') do
      expect(track.matches?("MATCHES")).to eq true
    end
  end

  it 'DOESNT matches when keyword is not present in neither title or artist' do
    track = Track.new('one two', 'by artist') do
      expect(track.matches?("MATCHES")).to eq false
    end
  end
end