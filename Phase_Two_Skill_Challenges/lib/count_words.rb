# Design
# A method called count_words that takes a string as an argument and returns the number of words in that string.

# Method Design Recipe

# {{PROBLEM}} Method Design Recipe

# 1. Describe the Problem
# A method called count_words 
# That takes a string as an argument and returns the number of words in that string.


# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.
# EXAMPLE
def count_words(string)
if string.empty?
  raise "No string given"
end
  string.split(" ").length
end


# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
# EXAMPLE

# count_words("The fox jumps etc.").to eq 4
# count_words("The fox jumps etc., The fox jumps etc.").to eq 8
# count_words("") fails "no string given"


# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
