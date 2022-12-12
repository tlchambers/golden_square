# {{PROBLEM}} Method Design Recipe

# 1. DESCRIBE THE PROBLEM
# Put or write the user story here. Add any clarifying notes you might have.

# ***Ruby
# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter
# and ends with a suitable sentence-ending punctuation mark.
# ***Ruby


# 2. DESIGN THE METHOD SIGNATURE
# Include the name of the method, its parameters, return value, and side effects.

# ***Ruby
# def check_sentence_grammar(sentence)
  # sentence[0..0] =~ /[A-Z]/ or
  # sentence.start_with?(/[A-Z]/)  
  # sentence.end_with? (/[.!?/)

# end

# 'sentence' is a string with words in it

# ***Ruby



# 3. CREATE EXAMPLES AS TESTS
# Make a list of examples of what the method will take and return.

# EXAMPLE

# check_sentence_grammar("hello WORLD").start_with?(/[A-Z]/).to eq false
# check_sentence_grammar("Hello WORLD").start_with?(/[A-Z]/).to eq true

# check_sentence_grammar("Hello World!").end_with?(/[!?.]/).to eq true
# check_sentence_grammar("hello World?").end_with?(/[!?.]/).to eq true
# check_sentence_grammar("hello World.").end_with?(/[!?.]/).to eq true
# check_sentence_grammar("hello World").end_with?(/[!?.]/).to eq false

# check_sentence_grammar("Hello World!").end_with?(/[!?.]/).to eq true

# Encode each example as a test. You can add to the above list as you go.


# ***Ruby
# 

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

# ********

def check_sentence_grammar(sentence)
  sentence_capitalized = sentence.start_with?(/[A-Z]/)
  appropriate_sentence_ending = sentence.end_with?("?") || sentence.end_with?(".") || sentence.end_with?("!")

  fail "No sentence provided." if sentence.empty?

  if sentence_capitalized == true && appropriate_sentence_ending  == true
    return true
  else
    return false
  end
end
