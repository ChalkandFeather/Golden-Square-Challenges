require "todo_checker"

RSpec.describe "todo_checker" do
  context "Return the string when passed text containing #TODO" do
  it "Returns string when including #TODO" do
  result = todo_checker("#TODO Water the plants")
  expect(result).to eq "#TODO Water the plants"
  end
end
context "Return empty string  when passed empty string and no #TODO" do
  it "Returns message" do
  result = todo_checker("")
  expect(result).to eq ""
  end
end

context "Return a message when passed string without #TODO" do
  it "Returns message" do
  result = todo_checker("It's sunny")
  expect(result).to eq "Nothing to do"
  end
 end
end
