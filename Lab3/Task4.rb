def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

def first_series(eps)
  n = 2
  prev_answer = -1
  new_answer = 0
  while (new_answer - prev_answer).abs > eps
    prev_answer = new_answer
    new_answer += (factorial(n - 1).to_f / factorial(n + 1))**(n*(n + 1))
    n += 1
  end
  new_answer
end

def second_series(eps)
  n = 1
  prev_answer = -1
  new_answer = 0
  while (prev_answer-new_answer).abs > eps do
    prev_answer = new_answer
    new_answer += (-1.0)**n/n**2
    n += 1
  end
  new_answer *= -1.0
  new_answer
end

def third_series(eps)
  n = 1
  prev_answer = -1
  new_answer = 0
  while (new_answer - prev_answer).abs > eps
    prev_answer = new_answer
    new_answer += factorial(4*n).to_f * factorial(2*n - 1) /
      (factorial(4*n+1) * 4**(2*n) * factorial(2*n))
    n += 1
  end
  new_answer
end

puts first_series(0.00001).to_s
puts second_series(0.00001).to_s
puts "PI^2/12 = " + (Math::PI**2/12).to_s
puts third_series(0.00001).to_s