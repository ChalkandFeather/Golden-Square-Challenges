require 'make_snippet'

RSpec.describe "make_snippet method" do
 context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

context "given a string of five words" do
    it "returns the string" do
      result = make_snippet("when I don't sit down")
      expect(result).to eq "when I don't sit down"
    end
  end

  context "given a string of six words" do
    it "returns the the first five words with an ..." do
      result = make_snippet("when I don't sit down enough")
      expect(result).to eq "when I don't sit down..."
    end
  end
end

#"takes first five words from string, replacing any remainging words with elipses"