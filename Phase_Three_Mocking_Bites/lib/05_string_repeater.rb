# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

class StringRepeater
  def initialize(string)
    @string = string
  end

  def run
    @string.puts "Hello. I will repeat a string many times."
    @string.puts "Please enter a string: "
    text_entered = @string.gets.chomp
    @string.puts "Please enter a number of repeats: "
    number_entered = @string.gets.to_i
    @string.puts "Here is your result: "
    @string.puts "#{text_entered * number_entered}"
  end
end