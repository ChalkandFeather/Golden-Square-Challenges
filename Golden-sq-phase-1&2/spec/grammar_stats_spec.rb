require "grammar_stats"

RSpec.describe GrammarStats do
  describe "#check" do
  context "In case of correct capital & punctuation" do
    it "returns true" do
   grammar = GrammarStats.new
   expect(grammar.check("Hello there.")).to eq true
   expect(grammar.check("Hello there!")).to eq true
   expect(grammar.check("Hello there?")).to eq true
      end
    end
    
    context "In case of punctuation with no capital" do
      it "returns false" do
     grammar = GrammarStats.new
     expect(grammar.check("hello there.")).to eq false
     end
      end

    context "In case of no capital & no punctuation" do
      it "returns false" do
        grammar = GrammarStats.new
        expect(grammar.check("hello there")).to eq false
        end
         end
         
      context "given an emptry string" do
        it "fails" do
          grammar = GrammarStats.new
          expect { grammar.check("")}.to raise_error "Not a sentence."
          end
        end

  describe "find percentage of texts which pass check" do
    context "returns an integer of 100 to represent 100% for single or more passed check/s" do
      it "returns 100 for a 100% success rate given 1 or more texts" do
      grammar = GrammarStats.new
      grammar.check("Hello.")
      grammar.check("Hello!")
      grammar.check("Bonjour?")
      expect(grammar.percentage_good).to eq 100
      end
    end

    context "returns an integer  for two texts: one pass, one fail check" do
      it "returns 100 for a 100% success rate given 2 texts" do
      grammar = GrammarStats.new
      grammar.check("Hello.")
      grammar.check("hello.")
      expect(grammar.percentage_good).to eq 50
      end
    end

    context "returns an integer  for two texts: one pass, one fail check" do
      it "returns 100 for a 100% success rate given 2 texts" do
      grammar = GrammarStats.new
      grammar.check("Hello.")
      grammar.check("hello.")
      expect(grammar.percentage_good).to eq 50
      end
    end

    context "returns an integer for all checks to fail " do
      it "returns 100 for a 100% success rate given 2 texts" do
      grammar = GrammarStats.new
      grammar.check("hello.")
      grammar.check("hello")
      expect(grammar.percentage_good).to eq 0
      end
    end

    context "returns an integer  for three texts: two pass, one fail check" do
      it "returns 100 for a 100% success rate given 2 texts" do
      grammar = GrammarStats.new
      grammar.check("Hello.")
      grammar.check("Bonjour!")
      grammar.check("Bonjour")
      expect(grammar.percentage_good).to eq 67
      end
    end


    
end
end
end


