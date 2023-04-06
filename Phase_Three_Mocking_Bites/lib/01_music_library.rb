class MusicLibrary
  def initialize
    @my_playlist = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @my_playlist.push(track)
  end

  def all
    # Returns a list of track objects
    return @my_playlist
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    return @my_playlist.select {|track| track.matches?(keyword)}
  end
end