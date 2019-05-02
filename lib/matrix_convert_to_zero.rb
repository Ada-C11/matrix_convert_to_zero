# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(nm) where m is the length of a column and n is the length of a row of the matrix
# Space complexity: O(1) because it is done in place and there are no arrays, etc being stored in memory within the method
def matrix_convert_to_zero(matrix)
  convert_one_to_x_where_zero_is_found(matrix)
  convert_x_to_zero(matrix)
  return matrix
end

# helper methods
def convert_column_to_x(matrix, j)
  n = 0
  while matrix[n] != nil
    if matrix[n][j] == 1
      matrix[n][j] = "X"
    end
    n += 1
  end
  return matrix
end

def convert_row_to_x(matrix, i)
  m = 0
  while matrix[i][m] != nil
    if matrix[i][m] == 1
      matrix[i][m] = "X"
    end
    m += 1
  end
  return matrix
end

def convert_one_to_x_where_zero_is_found(matrix)
  i = 0
  while matrix[i] != nil
    j = 0
    while matrix[i][j] != nil
      if matrix[i][j] == 0
        convert_column_to_x(matrix, j)
        convert_row_to_x(matrix, i)
      end
      j += 1
    end
    i += 1
  end
  return matrix
end

def convert_x_to_zero(matrix)
  i = 0
  while matrix[i] != nil
    j = 0
    while matrix[i][j] != nil
      if matrix[i][j] == "X"
        matrix[i][j] = 0
      end
      j += 1
    end
    i += 1
  end
  return matrix
end
