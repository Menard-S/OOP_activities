def gimme(triplet_array)
    sorted = triplet_array.sort
    second_number = sorted[1]

    triplet_array.index(second_number)
end

def gimme(input_array)
    # Find the index of the middle value by excluding the max and min indices
    input_array.index(input_array.each_with_index.max_by{|x, idx| (input_array.minmax.map{|v| (v-x).abs}).sum}.last)
  end
  

puts gimme([2, 3, 1]) # Should be 0
puts gimme([5, 10, 14]) # Should be 1