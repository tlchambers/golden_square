# {{PROBLEM}} Method Design Recipe

# 1. DESCRIBE THE PROBLEM
# Put or write the user story here. Add any clarifying notes you might have.

# ***Ruby
# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.
# ***Ruby


# 2. DESIGN THE METHOD SIGNATURE
# Include the name of the method, its parameters, return value, and side effects.

# ***Ruby 
# def text_validator(text)
#   return text.include?("#TODO")
# end
# ***Ruby



# 3. CREATE EXAMPLES AS TESTS
# Make a list of examples of what the method will take and return.

# ***Ruby
# check text_validator string include TODO => text_validator("some text TODO") return false
# check text_validator string include #TODO => text_validator("some text #TODO") return true
# check text_validator string include #TODO => text_validator("some text #TODO some text") return true
# check text_validator string include #TODO => text_validator("#TODO some text") return true
# check text_validator throws error message => text_validator("") return 'No text provided'

# ***Ruby

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

# ********
def text_validator(text)
  fail "No text provided" if text.empty? 
  return text.include?("#TODO")
end