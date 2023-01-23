class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
    @furthest_word_read = 0 # variable to create a marker for reading chunks. it will be updated as reading_chunk is called again.
  end

  def title
    return @title # Returns the title as a string
  end

  def contents
    return @contents# Returns the contents as a string
  end

  def count_words
    return words.length
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm)
    fail "Reading speed must be above 0 wpm" unless wpm.positive? # can use > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    fail "Reading speed must be above 0 wpm" unless wpm.positive?
    num_words_we_can_read = wpm * minutes #rpsec uses 200 / 1 = 2 num_words_we_can_can_read
    start_from = @furthest_word_read # this starts at 0,but will be added to.with num_words_we_can_read
    end_at = @furthest_word_read + num_words_we_can_read # starting at 0 + 2(num_words_we_can_read)
    word_list = words[start_from, end_at]#this is the content we will display although currently an array of counted words starting from 'start_from'to'end_at'
      if end_at >= count_words
        @furthest_word_read = 0
      else 
        @furthest_word_read = end_at #updates furtherst_word_read
      end
    return word_list.join(" ") 
  end

private

  def words
    return @contents.split(" ")
  end
end  


#def reading_time(wpm)
  #fail "Reading speed must be above 0 wpm" unless wpm.positive? # can use > 0
  #return (count_words / wpm.to_f).ceil # wpm is an integer representing the number of words the
                      # user can read per minute
  # Returns an integer representing an estimate of the reading time in minutes
  # for the contents at the given wpm.
#end




#def reading_chunk(wpm, minutes) 
  # `wpm` is an integer representing the number
                                # of words the user can read per minute
                                # `minutes` is an integer representing the
                                # number of minutes the user has to read
  # Returns a string with a chunk of the contents that the user could read
  # in the given number of minutes.
  # If called again, `reading_chunk` should return the next chunk, skipping
  # what has already been read, until the contents is fully read.
  # The next call after that it should restart from the beginning.