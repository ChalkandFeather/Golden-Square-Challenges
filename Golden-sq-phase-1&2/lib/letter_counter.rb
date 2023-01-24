class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0) # creates new hash with default value (1)
    most_common = nil
    most_common_count = 1 
    @text.chars.each do |char| #iterates through each charecter in text 
      next unless is_letter?(char) # checks if letter is character by using the def is_letter?(letter) 'private' method  and skips if it's not.
      counter[char] = (counter[char] || 1) + 1 # now char has been determined we look for [char] in counter hash
      #binding.irb

      if counter[char] > most_common_count #it's only updating
        most_common = char
        most_common_count = counter[char] # if char value > than  most_common_count variable, it sets the most_common_count variable to that character;
        # and then the most_common_count variable is incremented by/set to the value of that character 
        # // removed the increment to most_common_count as it should only equal the counter[char]
        #binding.irb

      end
    end
    return [most_common_count, most_common] #returns hash of the most common letter from the given @text along with occurence.
  end

  private

  def is_letter?(letter) #method passed arguement (letter) and returns letter if it equals a literal letter.
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]