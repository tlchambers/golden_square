require '08_music_library'
require '08_track'

RSpec.describe 'music_library_integration exercise' do
  context 'when we add a track to the music library' do
    it 'returns the track as a list' do
      playlist = MusicLibrary.new
      track1 = Track.new("song title1", 'by artist1')
      track2 = Track.new("song title2", 'by artist2')
      playlist.add(track1)
      playlist.add(track2)
      expect(playlist.all).to eq [track1, track2]
    end
  end

  context 'with some tracks added' do
    it 'searches the track by full title' do
      playlist = MusicLibrary.new
      track1 = Track.new("song title1", 'by artist1')
      track2 = Track.new("song title2", 'by artist2')
      playlist.add(track1)
      playlist.add(track2)
      result = playlist.search_by_title('song title2')
      expect(result).to eq [track2]
    end
  end

  context 'with some tracks added' do
    it 'searches the track by partial title' do
      playlist = MusicLibrary.new
      track1 = Track.new("song title1", 'by artist1')
      track2 = Track.new("song title2", 'by artist2')
      playlist.add(track1)
      playlist.add(track2)
      result = playlist.search_by_title(' title2')
      expect(result).to eq [track2]
    end
  end

  context 'where there are no tracks matching' do
    it 'yields an empty list when searching' do
      playlist = MusicLibrary.new
      track1 = Track.new("song title1", 'by artist1')
      playlist.add(track1)
      result = playlist.search_by_title(' fred')
      expect(result).to eq []
    end
  end
end