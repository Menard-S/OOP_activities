def is_isogram(word)    
    word = word.downcase
    letters = {}
  
    word.each_char do |char|

      next unless char.match?(/[a-z]/)
      return false if letters[char]
      
      letters[char] = true
    end
  
    true
  end
  
  puts is_isogram("Dermatoglyphics")
  puts is_isogram("aba")
  puts is_isogram("moOse")
  puts is_isogram("111mose")   
  