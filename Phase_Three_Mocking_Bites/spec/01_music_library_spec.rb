require '01_music_library'

RSpec.describe MusicLibrary do
  it 'adds and list the track' do
    playlist = MusicLibrary.new
    track1 = double :fake_track_class
    track2 = double :fake_track_class
    playlist.add(track1)
    playlist.add(track2)
    expect(playlist.all).to eq [track1, track2]
  end

  it 'searches for a track' do
    playlist = MusicLibrary.new
    track1 = double :fake_track_class, matches?: true
    track2 = double :fake_track_class, matches?: false
    playlist.add(track1)
    playlist.add(track2)
    expect(playlist.search('two')).to eq [track1]
  end
end