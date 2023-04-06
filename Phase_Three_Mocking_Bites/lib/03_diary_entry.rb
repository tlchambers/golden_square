# Line 4 is the same as writing line 7 & 9 and is the same as writing from line 19

# REFACTORED 1:
DiaryEntry3 = Struct.new(:title, :contents)

# REFACTORED 2: This one is handy as you can write new methods if you need to amend/ add
# class DiaryEntry3 < Struct.new(:title, :contents)

# end

# Is the same as writing the below code:

# class DiaryEntry3
#   def initialize(title, contents) # title, contents are both strings
#     @title = title
#     @contents = contents
#   end

#   def title
#     # Returns the title as a string
#     @title
#   end

#   def contents
#     # Returns the contents as a string
#     @contents
#   end
# end
