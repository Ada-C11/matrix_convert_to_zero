# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
def matrix_convert_to_zero(matrix)
  rows = matrix.size
  columns = matrix[0].size
  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        matrix[row][column] = 2
      end
    end
  end

  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 2
        columns.times { |i| matrix[row][i] = 0 unless matrix[row][i] == 2 }
        rows.times { |i| matrix[i][column] = 0 unless matrix[i][column] == 2 }
        matrix[row][column] = 0
        # puts "#{matrix}"
      end
    end
  end
  return matrix
end
