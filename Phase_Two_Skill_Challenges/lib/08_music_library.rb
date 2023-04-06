class MusicLibrary
  def initialize
    @playlist = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    return @playlist.push(track)
  end

  def all
    # Returns a list of track objects
    return @playlist
  end
  
  def search_by_title(keyword) # keyword is a string
    # Returns a list of tracks with titles that include the keyword
    return @playlist.select do |track|
      track.title.include?(keyword)
    end
  end
end