require '06_music_library_challenge'

RSpec.describe Music_library do
  it 'fails when no song has been added' do
    song_list = Music_library.new
    expect{ song_list.add("") }.to raise_error "No song added" 
  end 

  context 'when a user adds songs, it should store the result' do
    it 'stores a song added, in an array' do
      song_list = Music_library.new
      result = song_list.add("Golden Hour")
      expect(result).to eq ["Golden Hour"]
    end

    it 'stores a song added, in an array' do
      song_list = Music_library.new
      song_list.add("Golden Hour")
      result = song_list.add("Else")
      expect(result).to eq ["Golden Hour", "Else"]
    end

    it 'stores a song added, in an array' do
      song_list = Music_library.new
      song_list.add("Golden Hour")
      song_list.add("Else")
      result = song_list.add("Merry Christmas")
      expect(result).to eq ["Golden Hour", "Else", "Merry Christmas"]
    end
  end
  
  it 'returns a list all song added' do
    song_list = Music_library.new
    song_list.add("Golden Hour")
    song_list.add("Else")
    song_list.add("Merry Christmas")
    result = song_list.song_library
    expect(result). to eq ["Golden Hour", "Else", "Merry Christmas"]
  end

  context 'returns to user a nicely formatted list of all the songs added and listed to' do
    it 'returns nicely formatted when only one song added' do
      song_list = Music_library.new
      song_list.add("Golden Hour")
      result = song_list.formatted_song_library
      expect(result).to eq "Songs I have listened to: Golden Hour"
    end

    it 'returns nicely formatted when two songs added' do
      song_list = Music_library.new
      song_list.add("Golden Hour")
      song_list.add("Else")
      result = song_list.formatted_song_library
      expect(result).to eq "Songs I have listened to: Golden Hour, Else"
    end

    it 'returns nicely formatted when three songs added' do
      song_list = Music_library.new
      song_list.add("Golden Hour")
      song_list.add("Else")
      song_list.add("Merry Christmas")
      result = song_list.formatted_song_library
      expect(result).to eq "Songs I have listened to: Golden Hour, Else, Merry Christmas"
    end
  end
end