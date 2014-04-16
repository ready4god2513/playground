def dictionary_sort
  puts "Type a word:"
  dictionary = Array.new

  until "\n" == word = gets
    puts "Type a word or hit enter to quit"
    dictionary << word.chomp
  end


  dictionary.sort_by!(&:downcase)
  puts "Your dictionary has #{dictionary.length} words:"
  dictionary.each{ |word| puts word }
end

dictionary_sort