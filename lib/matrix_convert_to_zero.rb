# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(m * n), where m is the number of rows in the input matrix and n is the number of columns
# Space complexity: O(m + n), where m is the number of rows in the input matrix and n is the number of columns
def matrix_convert_to_zero(matrix)
  x_zeroes = {}
  y_zeroes = {}

  rows = matrix.length
  columns = matrix[0].length

  i = 0
  until i == rows
    array = matrix[i]

    j = 0
    until j == columns
      if array[j] == 0
        x_zeroes[i] = true
        y_zeroes[j] = true
      end
      j += 1
    end
    i += 1
  end

  rows.times do |row|
    if x_zeroes[row] == true
      columns.times do |column|
        matrix[row][column] = 0
      end
    end
  end

  columns.times do |column|
    if y_zeroes[column] == true
      rows.times do |row|
        matrix[row][column] = 0
      end
    end
  end

  return matrix
end
