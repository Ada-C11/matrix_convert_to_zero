# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(m x n) + O(m + n)
# Space complexity: O(m + n)
require "set"
require "awesome_print"

def matrix_convert_to_zero(matrix)
  rows = Set.new
  cols = Set.new

  for i in 0...matrix.length
    for j in 0...matrix[0].length
      if matrix[i][j] == 0
        rows.add(i)
        cols.add(j)
      end
    end
  end

  rows.each do |r|
    for c in 0...matrix[0].length
      matrix[r][c] = 0
    end
  end

  cols.each do |c|
    for r in 0...matrix.length
      matrix[r][c] = 0
    end
  end
end
