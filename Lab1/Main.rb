print "Enter phi: "
phi = gets.chomp.to_f
print "Enter x: "
x = gets.chomp.to_f

puts (Math.exp(Math.asin(x)) + Math.sqrt((phi + x).abs))/(Math.cos(Math.log(x**3).abs)**3) + 3.7*10**(-4.2) + Math.tan(Math::PI/2 + phi)**3
