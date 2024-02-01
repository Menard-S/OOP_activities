def unique_in_order(iterable)

    unique = []
    last = nil
    iterable.each do |item|
        if item != last
            unique << item
            last = item
        end
    end
    unique
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order([1, 2, 2, 3, 3])