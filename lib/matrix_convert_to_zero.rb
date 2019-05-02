# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n^3) - n * n * m, where n is the length of the largest row/col
# and m is the length of the smallest row/col
# Space complexity: O(1) - constant
def matrix_convert_to_zero(matrix)
  rows = matrix.length
  cols = matrix[0].length

  rows.times do |row|
    cols.times do |col|
      matrix[row][col] = "x" if matrix[row][col] == 0
    end
  end

  rows.times do |row|
    cols.times do |col|
      if matrix[row][col] == "x"
        cols.times do |i|
          matrix[row][i] = 0 if matrix[row][i] != "x"
        end

        rows.times do |i|
          matrix[i][col] = 0 if matrix[i][col] != "x"
        end

        matrix[row][col] = 0
      end
    end
  end

  return matrix
end
