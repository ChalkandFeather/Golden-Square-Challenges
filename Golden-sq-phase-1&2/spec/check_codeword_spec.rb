require "check_codeword"

RSpec.describe "check_codeword method" do 
  it "returns a wrong message if given wrong codeword" do
    result = check_codeword("yellow")
    expect(result).to eq "WRONG!"
end
  it "it returns 'Close, but nope.' with 1st and last characters matched" do
    result = check_codeword("have")
    expect(result).to eq "Close, but nope."
end
  it "It returns 'correct! Come in.' if word entered = horse" do
  result = check_codeword("horse")
  expect(result).to eq "Correct! Come in."
end
end