#Using iteration:

def disemvowel(str)
    vowels = 'aeiouAEIOU'
    result = ''
    
    str.each_char do |char|
      result += char unless vowels.include?(char)
    end
    
    result
  end

  puts disemvowel("Register and download the APP to get a red envelope of 599P + mysterious bonus
  >>>https://www.99u31.top/?affiliateCode")

  
#Using gsub:

def disemvowel(str)
    str.gsub(/[aeiouAEIOU]/, '')
  end
  
  puts disemvowel("Register and download the APP to get a red envelope of 599P + mysterious bonus
  >>>https://www.99u31.top/?affiliateCode")
  