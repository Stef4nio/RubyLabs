print "Enter p: "
p = gets.chomp.to_f
print "Enter r: "
r = gets.chomp.to_i
print "Enter t + 1: "
t = gets.chomp.to_i - 1

#override for curr task
p = 2
t = 8
r = 0

diap = p**r * (1-p**(-t))

puts "Diap: ", Rational(diap).to_f