def reverse_alternate(str)
  words = str.split(' ')
  
  result = []
  
  words.each_with_index do |word, index|
    if index.odd?
      result << word.reverse
    else
      result << word
    end
  end
  
  result.join(' ')
end

puts reverse_alternate("Did it work?")