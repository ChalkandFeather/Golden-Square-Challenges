require "music_tracker"

RSpec.describe MusicTracker do
  context "create a list of listned-to track names" do
    it "adds tracks as strings to an array" do
      tracker = MusicTracker.new
      tracker.add_track("Raphsody In Blue")
      expect(tracker.list_tracks()).to eq(["Raphsody In Blue"])
    end
  end
  
    it "empty string not added to list" do
      tracker = MusicTracker.new
      expect(tracker.list_tracks()).to eq([])
    end

    it "raises error when empty string added as track" do
      tracker = MusicTracker.new
     expect { tracker.add_track("") }.to raise_error "Cannot add empty track"
    end

    it "adds additional track puts in list(array)"do
      tracker = MusicTracker.new
      tracker.add_track("Raphsody In Blue")
      tracker.add_track("Head like a hole")
       expect(tracker.list_tracks()).to eq(["Raphsody In Blue", "Head like a hole"])   
     end
    end




