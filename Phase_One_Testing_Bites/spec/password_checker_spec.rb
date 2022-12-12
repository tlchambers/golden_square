# first we have to 'require' the file with our code in it, to help our spec file look up the correct file.
require 'password_checker'

# Then we set up a test suite - in order to group tests.
# We start the code by typing 'RSpec.describe' followed by a string to describe the unit of code we're testing.
RSpec.describe PasswordChecker do
  it 'fails' do
    password1 = PasswordChecker.new
    expect { password1.check("")}.to raise_error "Invalid password, must be 8+ characters."
  end

  it 'fails' do
    password1 = PasswordChecker.new
    expect { password1.check("1234567")}.to raise_error "Invalid password, must be 8+ characters."
  end

  it 'checks when password length is 8 characters long' do
    password2 = PasswordChecker.new
    expect(password2.check("12345678")).to eq true
  end

  it 'checks when password length is more than 8 characters long' do
    password2 = PasswordChecker.new
    expect(password2.check("12345678ten")).to eq true
  end
end