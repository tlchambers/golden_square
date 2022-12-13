
def get_most_common_letter(text)
  counter = Hash.new(0)
  # The characters include white space, which is a problem because we are looking for most common 'letter'
  
  text.chars.each do |char|
    if char =~ /[a-zA-Z]/
      then counter[char] += 1
    end
  end
  # The sort_by function sorts content in ascending format
  # Rather than [0][0] which looks at the first index of the array, we're looking for the most common character. We need to look at the last index.
  p counter.to_a.sort_by { |k, v| v }[-1][0]
end

get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"


