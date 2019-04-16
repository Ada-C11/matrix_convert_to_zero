require "pry"
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O (m * n) where m and n are the dimensions of the array
# Space complexity: O (m + n) where m and n are the dimensions of the matrix.
def matrix_convert_to_zero(matrix)
  i = 0
  zero_rows = Array.new(matrix.length, 1)
  zero_columns = Array.new(matrix[0].length, 1)

  # Record locations of zeros
  while i < matrix.length
    j = 0
    while j < matrix[i].length
      if matrix[i][j] == 0
        zero_rows[i] = 0
        zero_columns[j] = 0
      end
      j += 1
    end
    i += 1
  end

  # Change columns and rows
  i = 0
  while i < matrix.length
    j = 0
    while j < matrix[i].length
      if (zero_rows[i] == 0) || (zero_columns[j] == 0)
        matrix[i][j] = 0
      end
      j += 1
    end
    i += 1
  end
end
