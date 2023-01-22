require 'count_words'

RSpec.describe "count_words" do
  it 'counts words in a string' do
    result = count_words("This is my string")
    expect(result).to eq 4
  end
  end