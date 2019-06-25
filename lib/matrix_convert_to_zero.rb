# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(m * n)
# Space complexity: O(n)

def matrix_convert_to_zero(matrix)
  column_zero = 1
  rows = matrix.length
  columns = matrix[0].length

  for i in 0...rows
    if matrix[i][0] == 0
      column_zero = 0
    end

    for j in 1...columns
      if matrix[i][j] == 0
        matrix[i][0] = matrix[0][j] = 0
      end
    end
  end

  i = rows - 1

  while i >= 0
    j = columns - 1

    while j >= 1
      if matrix[i][0] == 0 || matrix[0][j] == 0
        matrix[i][j] = 0
      end
      j -= 1
    end

    if column_zero == 0
      matrix[i][0] = 0
    end

    i -= 1
  end
end
