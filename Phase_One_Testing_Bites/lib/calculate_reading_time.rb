# {{PROBLEM}} Method Design Recipe

# 1. DESCRIBE THE PROBLEM
# Put or write the user story here. Add any clarifying notes you might have.

# ***Ruby
# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.
# ***Ruby


# 2. DESIGN THE METHOD SIGNATURE
# Include the name of the method, its parameters, return value, and side effects.

# EXAMPLE

# `extract_upper` extracts uppercase words from a string
# uppercase_words = extract_uppercase(mixed_words)

# mixed_words: a string (e.g. "hello WORLD")
# uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects
# ***Ruby
# reading_time = calculate_reading_time(text)
# 'text' is a string with words in it
# 'reading_time' is an integer representing minutes
# ***Ruby



# 3. CREATE EXAMPLES AS TESTS
# Make a list of examples of what the method will take and return.

# EXAMPLE

# extract_uppercase("hello WORLD") => ["WORLD"]
# extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
# extract_uppercase("hello world") => []
# extract_uppercase("hello WoRLD") => []
# extract_uppercase("hello WORLD!") => ["WORLD"]
# extract_uppercase("") => []
# extract_uppercase(nil) throws an error

# Encode each example as a test. You can add to the above list as you go.


# ***Ruby
# test1
# calculate_reading_time("")
# => 0 

# test2
# calculate_reading_time("one")
# => 1

# test3
# calculate_reading_time("2 HUNDRED WORRDS")
# => 1

# test4
# calculate_reading_time("3 HUNDRED WORRDS")
# => 2

# test5
# calculate_reading_time("4 HUNDRED WORRDS")
# => 2

# test6
# calculate_reading_time("5 THOUSAND WORRDS")
# => 25

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

# ********

def calculate_reading_time(text)
  words = text.split(" ")
  return (words.length / 200.to_f).ceil
end