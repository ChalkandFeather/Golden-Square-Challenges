{{PROBLEM}} Method Design Recipe
1. Describe the Problem

#As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
is_correct = check_grammar(text)
#text is a string with words in it
# is_correct is a boolean depending on whether it checks out

uppercase_words = extract_uppercase(mixed_words)

3. Create Examples as Tests

Make a list of examples of what the method will take and return.
```ruby
# 1 
check_grammar("")
# => fail "not a sentance"

# 2 
check_grammar("Hello, I am Marie.")
# => true

# 3
check_grammar("Hello, I am Marie")
# => false

# 4
check_grammar("hello, I am Marie.")
# => false

# 5
check_grammar("HELLO, I am Marie.")
# => true 

# 6
check_grammar("Hello, I am Marie!")
# => true 

# 7
check_grammar("Hello, I am Marie?")
# => true 

# 8
check_grammar("Hello, I am Marie,")
# => false

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.