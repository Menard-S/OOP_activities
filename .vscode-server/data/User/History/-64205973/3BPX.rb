def is_isogram(word)
    # Downcase the word to make the check case insensitive
    word = word.downcase
    # Use a hash to keep track of the letters
    letters = {}
  
    word.each_char do |char|
      # If the character is not a letter, skip it
      next unless char.match?(/[a-z]/)
      
      # If the letter is already in the hash, it's not an isogram
      return false if letters[char]
      
      # Mark the letter as seen
      letters[char] = true
    end
  
    # If we reach here, all letters were unique
    true
  end
  
  # Example usage:
  puts is_isogram("Dermatoglyphics")  # Expected output: true
  puts is_isogram("aba")              # Expected output: false
  puts is_isogram("moOse")            # Expected output: false
  