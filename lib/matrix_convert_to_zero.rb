# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: the time complexity is O(n*m) where n is the number of rows in the matrix and m is the number of columns in the matrix because I have two nested loops O(2*n*m), which dropping the constant reduces to O(n*m)
# Space complexity: space complexity is O(n) where n is the larger number of rows or columns. This is because a hash is created where the rows are keys and columns are values
def matrix_convert_to_zero(matrix)
  num = 0
  pos = Hash.new
  rows = matrix.size
  columns = matrix[0].size

  rows.times do |row|
    columns.times do |col|
      if matrix[row][col] == 0
        if pos.include? row
          num += 1
          pos["row" + num.to_s] = col
        else
          pos[row] = col
        end
      end
    end
  end
  rows.times do |row|
    columns.times do |col|
      if pos.include? row
        matrix[row][col] = 0
      end
      if pos.values.include? col
        matrix[row][col] = 0
      end
    end
  end
  return matrix
end
