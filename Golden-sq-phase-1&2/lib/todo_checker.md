{{PROBLEM}} Method Design Recipe
1. Describe the Problem

#As a user
As a user
    So that I can keep track of my tasks
    I want to check if a text includes the string #TODO.

2. Design the Method Signature

todo_checker (str)
str.include? "#TODO"


3. Create Examples as Tests

Make a list of examples of what the method will take and return.
```ruby

# 1
todo_checker("#TODO Water the plants")
# => "#TODO Water the plants"

# 2 
todo_checker("")
# => "Nothing to do"

# 3
todo_checker("It's sunny")
# => "Nothing to do"


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.