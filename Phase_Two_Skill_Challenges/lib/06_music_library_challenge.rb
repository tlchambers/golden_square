# {{PROBLEM}} Method Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

# _________________________________
# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.
# _________________________________

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.
# EXAMPLE

# _________________________________
class Music_library
  def initialize
    @song_library = []
  end

  # add songs I have listened to and add it to library
  def add(song_name)
    if song_name.empty?
      raise "No song added" 
    end
    return @song_library << song_name
  end

  # see a list of all songs I have added
  def song_library
    return @song_library
  end

   # see a list of all songs I have added, nicely formatted
  def formatted_song_library
    return "Songs I have listened to: " + @song_library.join(", ")
  end
end


# _________________________________

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
# Encode each example as a test. You can add to the above list as you go.

# _________________________________
# testings for 'add method'
# song.add("Golden Hour") => "Golden Hour"
# song.add("Else") => "Else"

# song.add("") => raise error message "No song has been added"

# testings for 'add method' storing added song to '@song_library'
# song.add("Golden Hour") => ["Golden Hour"]
# song.add("Golden Hour")
# song.add("Else")
# => ["Golden Hour", "Else"]
# song.add("Golden Hour")
# song.add("Else")
# song.add("Merry Christmas")
# => ["Golden Hour", "Else", "Merry Christmas"]

# Testing for return of list of all songs added
# return @song_library in an array

# testings for formatted_song_library method
# format => "Songs I have listened to: "
# song.add("Golden Hour") 
# => "Songs I have listened to: Golden Hour"
# song.add("Golden Hour") 
# song.add("Else")
# => "Songs I have listened to: Golden Hour, Else"
# song.add("Golden Hour") 
# song.add("Else")
# song.add("Merry Christmas")
# => "Songs I have listened to: Golden Hour, Else, Merry Christmas"
# _________________________________

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
