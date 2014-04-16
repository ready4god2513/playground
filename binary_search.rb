def binary_search(search, arr)
  
  # Sort the array first so we have it in the correct order
  arr.sort!

  found = -1
  # If the search is outside of the bounds no need to do an initial search
  return found if arr.first > search || arr.last < search

  upper = arr.length + 1
  max_attempts = middle = (upper / 2).floor
  attempts = 0
  
  # Keep splitting the array in half until we find the result
  while found == -1
    found = middle if search == arr[middle]

    # If the search is higher than the current middle
    # then lets move the middle to the result between the upper bounds and current middle
    if search < arr[middle]
      # Let's say that the middle was at index 50 and our result
      # is at index 30.  We need to move the upper to
      # now be the middle - 1.  Then we need to recalculate the middle
      upper = middle - 1
    end

    # We should only ever check array.length / 2 times.  If we have hit that number
    # and no match, get out
    break if attempts > max_attempts
    attempts += 1

    # Now just recalculate the middle
    puts "STARTING UPPER = #{upper}"
    puts "STARTING MIDDLE = #{middle}"
    middle = ((upper + middle) / 2).floor
    puts "Upper = #{upper}"
    puts "Middle = #{upper}"
  end

  found
end

test_array = (100..200).to_a
puts binary_search(100, test_array) == 0

test_array = (100..200).to_a
puts binary_search(200, test_array) == 100

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = (100..200).to_a
puts binary_search(170, test_array) == 70

test_array = (100..200).to_a
puts binary_search(201, test_array) == -1

test_array = (100..200).to_a
puts binary_search(99, test_array) == -1
# # => true

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1

test_array = [13, 19, 24, 29, 32, 37, 43, 67]
puts binary_search(35, test_array) == -1

test_array = %w{a b c d e f g h i j}
puts binary_search("c", test_array) == 2

test_array = %w{a b c d e f g h i j}
puts binary_search("keys", test_array) == -1

test_array = %w{a b c d e g h i j}
puts binary_search("f", test_array) == -1