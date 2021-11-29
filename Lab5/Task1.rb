def f1(x)
  x * (1 + x) ** (1.0/3)
end

def f2(x)
  Math::E**x * Math.sin(x)
end

def prm(f, a, b, n)
  h = (b - a) / n.to_f
  sum = 0
  (1..n).each do |i|
    xi = a + i*h - h/2
    if f == "f1"
      sum += f1(xi)
    elsif f == "f2"
      sum += f2(xi)
    end
  end
  h * sum.truncate
end

def trp(f, a, b, n)
  h = (b - a) / n.to_f
  sum = 0
  if f == "f1"
    sum += f1(a) / 2 + f1(b) / 2
  elsif f == "f2"
    sum += f2(a) / 2 + f2(b) / 2
  end
  (1..n-1).each do |i|
    xi = a + i*h
    if f == "f1"
      sum += f1(xi)
    elsif f == "f2"
      sum += f2(xi)
    end
  end
  h * sum.truncate
end


print("f1 prm:", prm("f1", 0, 1, 100), "\n")
print("f1 trp:", trp("f1", 0, 1, 100), "\n")

print("f2 prm:", prm("f2", 0, 1, 100), "\n")
print("f2 trp:", trp("f2", 0, 1, 100), "\n")