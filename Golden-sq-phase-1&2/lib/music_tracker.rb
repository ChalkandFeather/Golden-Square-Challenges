class MusicTracker
  def initialize
    @track = []
  end

  def add_track(track) # track is a string
   raise "Cannot add empty track" if track.empty?
    @track << track
    end
  
  def list_tracks()
      return @track
      # returns an array of trasks
    end
  end

  