require 'reminder'

RSpec.describe Reminder do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      # we use 'expect { ... }' with curly braces, no parenthese. 
      # We put the code that throws the error inside the braces. 
      # This, combined with difference 1, 'wraps' this code in a special environment that means RSpec can 'catch' the error.
      # we use 'raise_error' instead of eq (equal)
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end