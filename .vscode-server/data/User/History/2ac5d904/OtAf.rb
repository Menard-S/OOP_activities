#Using iteration:

def disemvowel(str)
    vowels = 'aeiouAEIOU'
    result = ''
    
    str.each_char do |char|
      result += char unless vowels.include?(char)
    end
    
    result
  end

  puts disemvowel("This website is for losers LOL!") # => "Ths wbst s fr lsrs LL!"

  
#Using gsub:

def disemvowel(str)
    str.gsub(/[aeiouAEIOU]/, '')
  end
  
  puts disemvowel("This website is for losers LOL!") # => "Ths wbst s fr lsrs LL!"
  