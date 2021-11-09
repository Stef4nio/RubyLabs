=begin
input = 141

puts "141 in binary is: ", input.to_s(2)
=end
#a little joke :)

number = 141
if number == 0 then
  puts 0
else
  binary_str = ""
  while number != 0
    binary_str = String(number % 2) + binary_str
    number /= 2
  end
  puts binary_str
end

