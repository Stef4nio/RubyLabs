matrix = (0..7).map { Array.new(8, 1) }

def print_matrix(matrix)
  puts
  matrix.each_index do |i|
    matrix[i].each_index do |j|
      print matrix[i][j], "\t"
    end
    puts
  end
end

#намагався зробити In-place, але чомусь не виходило
def transpose_matrix(matrix)
  result_matrix = (0..7).map { Array.new(8, 1) }
  matrix.each_index do |i|
    matrix[i].each_index do |j|
      result_matrix[j][i] = matrix[i][j]
    end
  end
  result_matrix
end

def fill_matrix(matrix)
  matrix.each_index do |i|
    matrix[i].each_index do |j|
      if i != j
        matrix[i][j] = rand 10
      end
    end
  end
  matrix
end

matrix = fill_matrix matrix
print_matrix matrix
matrix = transpose_matrix matrix
print_matrix matrix