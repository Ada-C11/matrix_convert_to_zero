# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n) where n is the number of total elements in the matrix
# Space complexity: O(1) done in place
def matrix_convert_to_zero(matrix)
  placeholder_substitution(matrix, 0, -1)
  convert(matrix)
  placeholder_substitution(matrix, -1, 0)
end

def placeholder_substitution(matrix, elem_to_sub, subber)
  matrix.length.times do |row|
    matrix[row].length.times do |col|
      matrix[row][col] = subber if matrix[row][col] == elem_to_sub
    end
  end
end

def convert(matrix)
  i = 0
  while i < matrix.length
    j = 0
    while j < matrix[i].length
      if matrix[i][j] == -1
        set_row_to_zero(i, matrix)
        set_column_to_zero(j, matrix)
      end
      j += 1
    end
    i += 1
  end
end

def set_row_to_zero(row, matrix)
  return if !row || !matrix
  matrix[row].map! do |elem|
    elem == -1 ? -1 : 0
  end
end

def set_column_to_zero(col, matrix)
  return if !col || !matrix
  matrix.each do |row|
    row[col] = 0 unless row[col] == -1
  end
end
