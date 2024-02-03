#Using iteration:

def disemvowel(str)
    vowels = 'aeiouAEIOU'
    result = ''
    
    str.each_char do |char|
      # Add the character to the result unless it's a vowel
      result += char unless vowels.include?(char)
    end
    
    result
  end
  
  # Example usage:
  puts disemvowel("This website is for losers LOL!") # => "Ths wbst s fr lsrs LL!"

  
#Using gsub:

def disemvowel(str)
    # This regex matches all vowels both uppercase and lowercase
    str.gsub(/[aeiouAEIOU]/, '')
  end
  
  # Example usage:
  puts disemvowel("This website is for losers LOL!") # => "Ths wbst s fr lsrs LL!"
  