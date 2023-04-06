class GrammarStats_hash
  def initialize
    @text_passed = []
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital letter 
    # and ends with a sentence-ending punctuation mark.
    # appropriate_sentence_ending = ".!?"
    # if text[0] == text[0].capitalize && text[-1] =~ /[.?!]/
    
    if text.empty? 
      raise "No text provided!" 
    end

    if text[0] =~ /[A-Z]/ && text[-1] =~ /[.?!]/
      @text_passed.push({"to_check" => text, "valid" => true})
      # @text_passed.length
      return true
    else
      @text_passed.push({"to_check" => text, "valid" => false})
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed the check defined in the `check` method. The number 55 represents 55%.
    valid_items = @text_passed.select do |hash|
        if hash["valid"] == true
          bool = true
        else
          bool = false
        end
      end
    count_of_true = valid_items.length

    # count_of_false = 
    # @text_passed.select do |hash|
    #   if hash["valid"] == false
    #     bool = true
    #   else
    #     bool = false
    #   end
    # end
    # p "print count of false: " + count_of_false.length.to_s
   
    total_count = @text_passed.length
    percentage = (count_of_true.to_f / total_count) * 100
    return "#{percentage.ceil}%"
  end
end