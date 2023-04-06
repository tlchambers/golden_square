require '08_music_library'

RSpec.describe MusicLibrary do
  context 'it initially' do
    it 'is empty' do
      playlist = MusicLibrary.new
      expect(playlist.all).to eq []
    end
  end

  it 'respond to searches with an empty list ' do
    playlist = MusicLibrary.new
    expect(playlist.search_by_title('fred')).to eq []
  end
end
