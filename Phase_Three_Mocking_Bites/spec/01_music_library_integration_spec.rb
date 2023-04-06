require '01_music_library'
require '01_track'

RSpec.describe 'music library integration exercise' do
  it 'adds and list the track' do
    playlist = MusicLibrary.new
    track1 = Track.new('title_1', 'artist_1')
    track2 = Track.new('title_2', 'artist_2')
    playlist.add(track1)
    playlist.add(track2)
    expect(playlist.all).to eq [track1, track2]
  end

  it 'searches track that matches' do
    playlist = MusicLibrary.new
    track1 = Track.new('one two three', 'four five six')
    track2 = Track.new('seven eight nine', 'ten eleven twelve')
    playlist.add(track1)
    playlist.add(track2)
    expect(playlist.search("two")).to eq [track1]
  end
end