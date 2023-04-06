# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts 'Hello. I will subtract two numbers.'
    @terminal.puts 'Please enter a number: '
    number1 = @terminal.gets.to_i  #get_number
    @terminal.puts 'Please enter ANOTHER number: '
    number2 = @terminal.gets.to_i  #get_number
    @terminal.puts 'Here is your result:'
    @terminal.puts "#{number1} - #{number2} = #{number1 - number2}"
  end

  # private
  
  # def get_number
  #   response = @terminal.gets
  #   return response.to_i if response.to_i.to_s == response
  #   fail "You must enter a number!"
  # end
end