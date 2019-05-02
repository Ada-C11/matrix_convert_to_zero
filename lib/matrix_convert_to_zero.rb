# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n*m), where n is the number of rows and m is the number of columns in the matrix
# Space complexity: O(n), where n is the number of elements in the matrix.
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
    matrix.first.length.times do |i|
      matrix[row][i] = 0
    end
  end

  return matrix
end
