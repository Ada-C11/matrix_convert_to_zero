# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n*m), where n is the number of rows and m is the number of columns
# Space complexity: O(n + m), where n is the number of rows in the matrix and m is the number of columns in the matrix
def matrix_convert_to_zero(matrix)
  return nil if matrix.empty?

  rows = matrix.size
  columns = matrix[0].size

  rows.times do |row|
    columns.times do |column|
      matrix[row][column] = 'x' if matrix[row][column] == 0
    end
  end

  rows.times do |row|
    columns.times do |column|
      next unless matrix[row][column] == 'x'

      columns.times { |i| matrix[row][i] = 0 unless matrix[row][i] == 'x' }
      rows.times { |i| matrix[i][column] = 0 unless matrix[i][column] == 'x' }
      matrix[row][column] = 0
    end
  end
end
