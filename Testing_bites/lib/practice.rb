def practice(str)
  if  str.include? "#TODO"
    return str
  elsif str.include? "#todo"
    return str
  elsif str.empty? 
    return ""
  else
    return "Nothing to do"
  end
end