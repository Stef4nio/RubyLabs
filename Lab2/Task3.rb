binary_str = "1011011011011"

res_decimal = 0

binary_str.reverse.chars.map.with_index do |digit, index|
  res_decimal += digit.to_i * 2**index
end

puts res_decimal