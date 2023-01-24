class PhoneBook
  def initialize
    @numbers = []
  end
  
  def extract_numbers(text)
    # extract (using .scan - it will return EVERYTHIng that matches the REGEX )any number between [0-9] {11} times. .scan (-ed) number into .to_a (array)then shovel number into @numbers
   text.scan(/[0-9]{11}/).to_a.each do |number| 
  @numbers << number
   # for each number shovel into @numbers
    end
  @numbers.uniq!
  end
  
    def list #first method 
  return @numbers #first method return
end
end