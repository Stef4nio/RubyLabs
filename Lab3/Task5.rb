$N = 10
$c = 30

def y_func(x)
  ((x**2 - $c**2)*(x**(1.0/$N) + $N**(1.0/$c))) /
    (x**($c/3) + x**(1.5/$c) - (x**2*$c**3)**3 - ($N**(0.25) - x)**3)
  -
    (($c*x)**(1.0/3) + (x/$c)**(1.0/$N))
end

def z_func(x)
  (((Math.sin(x)**2 + Math.tan(x)**2)**$c + 1) * (Math.cos(x)**2 - 1.0/Math.tan(x)**2 + 1)) /
    ((Math.cos(x)**2 + 1.0/Math.tan(x)**2 + 1) * (Math.sin(x)**2 + Math.tan(x)**2 - 1))
end

def print_res(dict)
  dict.each { |i|
    print i.to_s + "; "
  }
end

first_answer = {}
(1..$N).step(($N - 1).to_f / ($N + $c)) do |i|
  first_answer[i] = y_func(i)
end


second_answer = {}
i = Math::PI / $N
delta = (Math::PI - Math::PI / $N) / ((3.0/2)*$N + $c)
while i <= Math::PI do
  second_answer[i] = z_func(i)
  i += delta
end


third_answer = {}
(2..$c).step(($c - 2).to_f / (2*$N)) do |j|
  if j > 2 && j < $N
    third_answer[j] = y_func(j)
  elsif j > $N && j < 2*$N
    third_answer[j] = z_func(j)
  else
    third_answer[j] = y_func(j) + z_func(j)
  end
end



puts "1"
print_res(first_answer)
puts "\n2"
print_res(second_answer)
puts "\n3"
print_res(third_answer)