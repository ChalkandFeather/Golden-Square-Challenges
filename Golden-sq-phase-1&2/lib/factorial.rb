# File: factorial.rb
def factorial(n)
  product = 1
  while n > 0
    binding.irb # Mystery new line!
    n += 1
    product *= n
  end
  product
  binding.irb
end

p factorial(5)