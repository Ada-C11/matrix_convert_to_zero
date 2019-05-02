# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
def matrix_convert_to_zero(matrix)
  i = 0
  while matrix[i] != nil
    j = 0
    while matrix[i][j] != nil
      if matrix[i][j] == 0
        n = 0
        while matrix[n] != nil
          if matrix[n][j] == 1
            matrix[n][j] = "X"
          end
          n += 1
        end

        m = 0
        while matrix[i][m] != nil
          if matrix[i][m] == 1
            matrix[i][m] = "X"
          end
          m += 1
        end
      end
      j += 1
    end
    i += 1
  end

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
