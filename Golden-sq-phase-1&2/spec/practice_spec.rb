require "practice"

RSpec.describe "practice method" do
  context "return string when given text containing #TODO " do
  it "returns text when str includes #TODO"  do
  result = practice("#TODO Water the plants")
  expect(result).to eq "#TODO Water the plants"
    end
  end

  context "if text is empty" do
    it "returns empty string when text is empty"  do
    result = practice("")
    expect(result).to eq ""
      end
    end

  context "if text is doesn't contain #TODO" do
    it "returns message confirming no todo." do
    result = practice("Sunshine is forecast")
    expect(result).to eq "Nothing to do"
      end
    end

    context "if text is contains lowercase #todo" do
      it "returns text when str includes lowercase #todo" do
      result = practice("#todo 10 mins meditation")
      expect(result).to eq "#todo 10 mins meditation"
      end
    end


end