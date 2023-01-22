def todo_checker(str)
  if str.include? "#TODO"
  return str
  elsif
  str.empty?
  return ""
  else
  return "Nothing to do"
  end
end