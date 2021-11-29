$k = 13

def output_matrix(matrix)
  puts
  matrix.each_index do |i|
    matrix[i].each_index do |j|
      print matrix[i][j].round(1), "\t"
    end
    puts
  end
  puts
end

def matrix_a(n)
  matrix = (0..n-1).map { Array.new(n, 2.0) }
  matrix.each_index do |i|
    matrix[i].each_index do |j|
      if i != j
        matrix[i][j] = $k+2.0
      end
    end
  end
  matrix
end

def vector_b(n)
  (0..n-1).map{ |i| i + 1 }
end

def solve(matrix, vector, n)
  x = (0..n-1).map{ Array.new(n) }

  (0..n-1).each do |k|
    max = (matrix[k][k]).abs
    index = k
    (k+1..n-1).each do |i|
      if (matrix[i][k]).abs > max
        max = (matrix[i][k]).abs
        index = i
      end
    end
    (0..n-1).each do |j|
      temp = matrix[k][j]
      matrix[k][j] = matrix[index][j]
      matrix[index][j] = temp
    end
    temp = vector[k]
    vector[k] = vector[index]
    vector[index] = temp
    (k..n-1).each do |i|
      temp = matrix[i][k]
      (0..n-1).each do |j|
        matrix[i][j] = matrix[i][j].to_f / temp
      end

      vector[i] = vector[i] / temp
      if i == k
        next
      end
      (0..n-1).each do |j|
        matrix[i][j] = matrix[i][j] - matrix[k][j];
      end
      vector[i] = vector[i] - vector[k]
    end
  end
  (n-1).downto(0) do |k|
    x[k] = vector[k].round(2)
    (0..k).each do |i|
      vector[i] = vector[i] - matrix[i][k] * x[k];
    end
  end
  x
end

puts "Enter n:"
n = gets.chomp.to_i

if n > 9 || n < 3
  puts "incorrect input"
else
  matrix = matrix_a n
  vector = vector_b n
  puts "Input matrix A:"
  output_matrix matrix
  puts "Input vector b:"
  p vector
  answer = solve(matrix, vector, n)
  puts "Output vector answer:"
  p answer
end
