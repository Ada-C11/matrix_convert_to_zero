# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
def matrix_convert_to_zero(matrix)
  new_matrix = []
  rows_w_0 = {}
  cols_w_0 = {}
  
  matrix.length.times do |x|
    matrix[x].length.times do |y|
      if matrix[x][y] == 0
        rows_w_0[x] = true
        cols_w_0[y] = true
      end
    end
  end

  matrix.length.times do |x|
    matrix[x].length.times do |y|
      if rows_w_0[x] == true || cols_w_0[y] == true
        matrix[x][y]=0
      else
      end 
    end
  end
  return matrix
end




  