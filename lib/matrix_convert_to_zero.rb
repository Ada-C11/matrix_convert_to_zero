# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n^2)
# Space complexity: O(n)
def matrix_convert_to_zero(matrix)
  rows = matrix.length
  columns = matrix[0].length
  
  sum_rows = []
  matrix.each do |row|
    sum_rows.push(row.sum)
  end

  sum_columns = []
  columns.times do |i|
    sum = 0
    rows.times do |j|
      sum = sum + matrix[j][i]
    end
    sum_columns.push(sum)
  end
  
  max = rows + columns

  rows.times do |i|
    columns.times do |j|
      if sum_rows[i] + sum_columns[j] < max
        matrix[i][j] = 0
      end
    end
  end

  return matrix
end
