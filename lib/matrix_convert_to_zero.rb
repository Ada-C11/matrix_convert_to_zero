# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

#Approach 1:
# Time complexity: O(n^3) 3 nested loops
# Space complexity: O(n^2) n is the number of rows and columns in the matrix being cloned

def matrix_convert_to_zero_n_3(matrix)
  clone = matrix.map(&:dup)
  rows = matrix.length
  columns = matrix[0].length
  rows.times do |i|
    columns.times do |j|
      if matrix[i][j] == 0
        columns.times do |jj|
          clone[i][jj] = 0
        end
        rows.times do |ii|
          clone[ii][j] = 0
        end
      end
    end
  end
  rows.times do |i|
    columns.times do |j|
      matrix[i][j] = clone[i][j]
    end
  end
end

#Approach 2:
# Time complexity: O(n^2) 2 nested loops
# Space complexity: O(n) n is the number of affected rows and columns
def matrix_convert_to_zero(matrix)
  affected_rows = []
  affected_columns = []
  rows = matrix.length
  columns = matrix[0].length
  rows.times do |i|
    columns.times do |j|
      if matrix[i][j] == 0
        affected_rows << i
        affected_columns << j
      end
    end
  end
  affected_rows.each do |i|
    columns.times do |j|
      matrix[i][j] = 0
    end
  end
  affected_columns.each do |j|
    rows.times do |i|
      matrix[i][j] = 0
    end
  end
end
