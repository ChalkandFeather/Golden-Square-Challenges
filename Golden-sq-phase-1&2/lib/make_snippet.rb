def make_snippet(str)
  words = str.split(" ")
  if words.length <= 5
    return str
  else
   return words[0,5].join(" ")  + "..."
  end
end




#Test-drive a method with the following design:A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.