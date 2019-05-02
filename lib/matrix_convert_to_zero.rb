# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
def matrix_convert_to_zero(matrix)
  num_of_rows = matrix.length
  num_of_columns = matrix[0].length

  rows_to_0 = []
  cols_to_0 = []

  num_of_rows.times do |row_i|
    num_of_columns.times do |col_j|
      if matrix[row_i][col_j] == 0
        rows_to_0 << row_i
        cols_to_0 << col_j
      end
    end
  end

  rows_to_0.length.times do |i|
    num_of_columns.times do |j|
      matrix[rows_to_0[i]][j] = 0
    end
  end

  cols_to_0.length.times do |i|
    matrix.each do |line|
      line[cols_to_0[i]] = 0
    end
  end

  return matrix
end
