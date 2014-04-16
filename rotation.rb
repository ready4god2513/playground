# I want to learn some big words so that people think I'm smart.
# I opened up a dictionary to a page in the middle and started flipping through, looking for words I didn't know. 
# I decided to start placing them at increasing indices in a huge array I created in memory. When 
# I reached the end of the dictionary, I started from the beginning and did the same thing until I 
# reached the page I had started at.
# 
# Now I have an array of words that are mostly alphabetical, except they start somewhere in the middle of 
# the alphabet, reach the end, and then start from the beginning of the alphabet. In other words, this is an 
# alphabetically ordered array that has been "rotated."
# 
# Write a function for finding the "rotation point," which is where I started working from the beginning of the 
# dictionary. This array is huge (there are lots of words I don't know) so we want to be efficient here.

class Rotation

  def initialize(words)
    @words = words
  end

  def find_point
    first_word = @words[0]
    floor_index = 0
    ceiling_index = @words.length - 1

    while floor_index < ceiling_index
      guess_index = (floor_index + ceiling_index) / 2
      if @words[guess_index] > first_word
        floor_index = guess_index
      else
        ceiling_index = guess_index
      end

      if (floor_index + 1) == ceiling_index
        return ceiling_index
      end
    end
  end

end

words = %w{ gjshgjksdhg hsljdhgjsldg idsg jdsjhg klksdjg ljsdgjsd msjdhgjdsh nosdngsd oosdgsd psdgsdg q dgjdghd a alog asdgsd bdsgsdg bsdgsdg cjgksdgsd ddsgsd egsdgsd fsjdglsdkgs }

puts words[Rotation.new(words).find_point]