def letter_count(s)
  counts = {}

  s.each_char do |char|
    if ('a'..'z').include?(char)
      char_sym = char.to_sym
      if counts[char_sym]
        counts[char_sym] += 1
      else
        counts[char_sym] = 1
      end
    end
  end
  counts
end

puts letter_count("arithmetics")
puts letter_count("ArITHmetICS")
