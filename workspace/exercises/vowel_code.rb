def encode(str)
    vowel_to_number = { 'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5' }
    str.chars.map { |char| vowel_to_number[char] || char }.join
  end
  
  def decode(str)
    number_to_vowel = { '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u' }
    str.chars.map { |char| number_to_vowel[char] || char }.join
  end

  puts encode("hello")
  puts decode("h3 th2r2")
