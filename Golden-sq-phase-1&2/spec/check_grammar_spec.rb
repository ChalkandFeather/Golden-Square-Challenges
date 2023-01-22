require "check_grammar"

RSpec.describe "check_grammar method" do
context "given an emptry string" do
  it "fails" do
    expect { check_grammar("")}.to raise_error "Not a sentence."
    end
  end

  context "given a sentance with capital letter and full stop it returns true. " do
  it "returns true" do
  result = check_grammar("Hello, I am Marie.")
  expect(result).to eq true
    end
  end

context "given a sentance with capital letter and no proper punctuation it returns false. " do
    it "returns false" do
    result = check_grammar("Hello, I am Marie")
    expect(result).to eq false
      end
    end  

context "given a sentance without capital letter and no full stop it returns false. " do
    it "returns false" do
      result = check_grammar("hello, I am Marie.")
      expect(result).to eq false
        end
      end  

context "given a sentance without capital letter and no full stop it returns false. " do
        it "returns false" do
          result = check_grammar("hello, I am Marie.")
          expect(result).to eq false
            end
          end  

context "given a sentance with uppercase first word and no full stop returns false. " do
    it "returns false" do
        result = check_grammar("HELLO, I am Marie")
        expect(result).to eq false
        end
      end  

context "given a sentance with capital letter word and  exclamation mark returns true. " do
  it "returns true" do
      result = check_grammar("HELLO, I am Marie!")
      expect(result).to eq true
      end
    end  
    context "given a sentance with capital letter word and question mark returns true. " do
      it "returns true" do
      result = check_grammar("Hello, I am Marie?")
      expect(result).to eq true
      end
  end  

  context "given a sentance with capital letter and no comma on end returns false. " do
    it "returns false" do
      result = check_grammar("Hello, I am Marie,")
      expect(result).to eq false
    end
  end   
end

