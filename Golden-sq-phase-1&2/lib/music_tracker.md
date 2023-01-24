# {{music_tracker}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


### Useful words / terms
add tracks
list trasks


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTracker
  def initialize 
  end

  def add_track(track) # track is a string
    # No return value
  end

  def list_tracks()
    # returns an array of tasks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
tracker = MusicTracker.new
tracker.add_track("Raphsody In Blue")
tracker.list_tracks() # => ["Raphsody In Blue"]

# 2
tracker = MusicTracker.new
tracker.list_tracks() # => []

# 3
tracker = MusicTracker.new
tracker.add_track("Raphsody In Blue")
tracker.add_track("Head like a hole")
tracker.list_tracks() # => ["Raphsody In Blue", "Head like a hole"]

# 4
tracker = MusicTracker.new
tracker.add_track("") # => []

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._