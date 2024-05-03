def up_array(arr)
  return nil if arr.empty? || arr.any? { |num| num < 0 || num > 9 }

  carry = 1

  (arr.length - 1).downto(0) do |i|
    sum = arr[i] + carry
    if sum >= 10
      arr[i] = 0
      carry = 1
    else
      arr[i] = sum
      carry = 0
    end
  end

  arr.unshift(1) if carry == 1
  arr
end

puts up_array ([8, 9, 9, 9])