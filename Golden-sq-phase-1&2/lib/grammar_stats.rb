class GrammarStats
  def initialize 
    @total_texts = 0
    @passed_texts = 0
  end

  def check(text) 
    fail "Not a sentence." if text.empty?
    capitalised = text[0] == text[0].upcase
    punctuated = %w[. ! ?].include?(text[-1])
    if capitalised && punctuated
      @total_texts += 1
      @passed_texts += 1
      return true
else
  @total_texts += 1
  return false
  end
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end


  def percentage_good
   percentage = (@passed_texts / @total_texts.to_f * 100)
    return percentage.round
  end
end
# Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check method. The number 55 represents 55%