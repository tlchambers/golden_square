class GrammarStats_array
  def initialize
    @text_checked = []
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    if text.empty? 
      raise "No text provided!" 
    end

    if text[0] =~ /[A-Z]/ && text[-1] =~ /[.?!]/
      @text_checked.push(true)
      return true
    else
      @text_checked.push(false)
      return false
    end
    
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    arr_of_true = @text_checked.select { |item| item == true}
    num_of_true = arr_of_true.length

    total_num_of_checks = @text_checked.length
  
    percentage = (num_of_true.to_f / total_num_of_checks) * 100
    return "#{percentage.ceil}%"
  end
end