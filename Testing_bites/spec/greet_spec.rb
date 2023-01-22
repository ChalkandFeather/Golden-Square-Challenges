## File: spec/add_five_spec.rb
require 'greet' # We have to require the file with our code in first.
# We have to require the file with our code in first.
RSpec.describe 'greet' do
# Next, we create a single test example.
# We use the string here to describe what the example is.
  it 'greets Scarlett' do
  # We run the method with an example argument "Scarlett"
  name = 'Scarlett' #given
  #result = greet(name)#When
  expect(greet(name)).to eq 'Hello, Scarlett' 
  #Then - this line does what the previous 2 lines were doing
end
end