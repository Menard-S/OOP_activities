def gimme(triplet_array)
    sorted = triplet_array.sort
    second_number = sorted[1]

    triplet_array.index(second_number)
end

puts gimme([2, 3, 1]) # Should be 0
puts gimme([5, 10, 14]) # Should be 1