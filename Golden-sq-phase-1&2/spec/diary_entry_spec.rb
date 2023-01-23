require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe "#count_words" do
    it "returns number of words in contents as integer" do
    diary_entry = DiaryEntry.new("my_title", "some content here")
    expect(diary_entry.count_words).to eq 3
    end 

    it "returns zero when contents are empty" do
    diary_entry = DiaryEntry.new("my_title", "")
    expect(diary_entry.count_words).to eq 0
    end 
  end

    describe "#reading_time" do
      context "given a wpm of some sensible number(200)" do
        it "returns the ceiling of the number of mins it takes ot read content" do
          diary_entry = DiaryEntry.new("my_title", "one " * 550) # let's say 550 words the word 'one ' is simply representing a word to be repeated so we don't have insert content 550 words long
          expect(diary_entry.reading_time(200)).to eq 3 # 550 words divided by 200 wpm = 2.75 however we used ceiling = 3.
        end
      end

      context "given a wpm of 0" do
        it "fails" do  
          diary_entry = DiaryEntry.new("my_title", "one two three")#one two three is simply example content
          expect { diary_entry.reading_time(0)}.to raise_error "Reading speed must be above 0 wpm"
      end
    end
end 
describe "reading_chunk" do
  context "with a text readable within given minutes" do
    it "returns the full contents" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      chunk = diary_entry.reading_chunk(200, 1) #(wpm, mins)
      expect(chunk).to eq "one two three"
end
end

context "with contents unreadable within time" do
  it "returns readable chunk" do
  diary_entry = DiaryEntry.new("my_title", "one two three")
  chunk = diary_entry.reading_chunk(2, 1) #(wpm, mins)
  expect(chunk).to eq "one two"
end 

  it "returns the next chunk, next time we are asked" do
    diary_entry = DiaryEntry.new("my_title", "one two three")
    diary_entry.reading_chunk(2, 1) #(wpm, mins)
    chunk = diary_entry.reading_chunk(2, 1) #(wpm, mins)
    expect(chunk).to eq "three"
  end 

    it "restarts after reading the whole contents" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1) #(wpm, mins)
      diary_entry.reading_chunk(2, 1) #(wpm, mins). we repeat this line as we are calling it again to mimic repeating the contents.
      chunk = diary_entry.reading_chunk(2, 1) #(wpm, mins)
      expect(chunk).to eq "one two"
      end 

    it "restarts if finishes exactly on end" do
      diary_entry = DiaryEntry.new("my_title", "one two three")
      diary_entry.reading_chunk(2, 1) #(wpm, mins)
      diary_entry.reading_chunk(1, 1) #(wpm, mins). we repeat this line as we are calling it again to mimic repeating the contents but this time we only had '1' word therefore  'three' is left over hence finishing exactly on end
      chunk = diary_entry.reading_chunk(2, 1) #(wpm, mins)
      expect(chunk).to eq "one two"
      end 
    end
  end
end
