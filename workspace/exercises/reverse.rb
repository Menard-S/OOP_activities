def custom_reverse(string)
    reversed_string = ""
    i = string.length - 1
    while i >= 0
      reversed_string += string[i]
      i -= 1
    end
    reversed_string
end

puts custom_reverse("Adobe") # Expected output: "ebodA"
puts custom_reverse("Photoshop") # Expected output: "pohsotohP"
