# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
def matrix_convert_to_zero(matrix)
  cols_with_zeros = []
  rows_with_zeros = []

  matrix.each_with_index do |row, i|
    row.each_with_index do |col_num, j|
      if col_num == 0
        cols_with_zeros.push(j)
        rows_with_zeros.push(i)
      end
    end
  end

  cols_with_zeros.each do |col|
    matrix.length.times do |x|
      matrix[x][col] = 0
    end
  end

  rows_with_zeros.each do |row|
    matrix.first.each do |col|
      matrix[row][col] = 0
    end
  end

  return matrix
end

# matrix = [
#   [1, 0, 1, 0],
#   [1, 1, 1, 1],
#   [1, 0, 0, 1],
# ]

# puts "#{matrix_convert_to_zero(matrix)}"

# 0 0 0 0
# 1 0 0 0
# 0 0 0 0
