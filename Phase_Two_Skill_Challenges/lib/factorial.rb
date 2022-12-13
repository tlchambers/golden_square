def factorial(n)
  result = 1
  p "at the start result is = #{result} "
  while n > 1
    p "loop starts, we get n: #{n} and multiple result: #{result} by n: #{n}"
    result *= n
    p "next loop, we subtract 1 from n: #{n}."
    n -= 1    
    p "we get the result: #{result}"
  end
  p "final result = result: #{result}"
  result
end

puts factorial(5)

# Intended output:
# 
# > factorial(5)
# => 120

# result = 1
# while n > 1
#   result *= n
#   n -= 1    
# end
# result
# end

# puts factorial(5)