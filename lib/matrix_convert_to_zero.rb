# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n * m) or O(n^2) where n == m
# Space complexity: O(n), n > m where n & m are the dimension of the matrix
def matrix_convert_to_zero(matrix)
  # raise NotImplementedError
  row_set = Set.new
  column_set = Set.new

  for i in (0...matrix.length)
    for j in (0...matrix[i].length)
      if matrix[i][j] == 0
        row_set.add(i)
        column_set.add(j)
      end
    end
  end

  row_set.each_with_index do |k|
    for l in (0...matrix[k].length)
      matrix[k][l] = 0
    end
  end

  for n in (0...matrix.length)
    column_set.each_with_index do |m|
      matrix[n][m] = 0
    end
  end
end

