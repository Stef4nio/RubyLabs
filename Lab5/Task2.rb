def f(x, i)
  1/(2*i +1) * ((x - 1)*(x + 1))**(2*i + 1)
end

x = 0.5 # [0.2; 1]
n = 50 # [10; 58]

def calculate_sum(x, n=-1)
  sum = 0
  prev_sum = -1
  eps = 0.001
  if n >=0
    (0..n).each do |i|
      sum += f(x, i)
    end
    sum
  else
    #Якщо я правильно зрозумів, то суму треба орбрахувати, коли N задане і коли N нескінченність
    i = 0
    while (sum - prev_sum).abs > eps
      prev_sum = sum
      sum += f(x, i)
      i += 1
    end
    sum
  end
end

puts(calculate_sum(x, n))
puts(calculate_sum(x))