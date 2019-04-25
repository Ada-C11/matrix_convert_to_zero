require "pry"
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O (m * n) where m and n are the dimensions of the array
# Space complexity: O(1) because the first row and column of the matrix are used as buffer space. The only new variables created are i, j, first_row_zero, and first_column_zero
def matrix_convert_to_zero(matrix)
  i = 0
  # Record locations of zeros
  while i < matrix.length
    j = 0
    while j < matrix[i].length
      if matrix[i][j] == 0
        matrix[i][0] = 0
        matrix[0][j] = 0
        (first_row_zero = true) if (i == 0)
        (first_column_zero = true) if (j == 0)
      end
      j += 1
    end
    i += 1
  end

  # Change inner rows + columns
  i = 1
  while i < matrix.length
    j = 1
    while j < matrix[i].length
      if (matrix[i][0] == 0) || (matrix[0][j] == 0)
        matrix[i][j] = 0
      end
      j += 1
    end
    i += 1
  end

  if first_row_zero
    j = 0
    while j < matrix[0].length
      matrix[0][j] = 0
      j += 1
    end
  end

  if first_column_zero
    i = 0
    while i < matrix.length
      matrix[i][0] = 0
      i += 1
    end
  end
end
