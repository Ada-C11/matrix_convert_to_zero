# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(r * c), where r equals the number of arrays (rows) inside the array, and
#                    c equals the number of elements (columns) inside of a nested array
# Space complexity: O(1), or constant.  We're not creating any additional data structures that hinges on user input
def matrix_convert_to_zero(matrix)
  # Check for edge cases
  return if (matrix == nil || matrix == [])

  # Determine length of rows and columns
  rows = matrix.length
  columns = matrix[0].length

  row_zero_zeroes = false
  # Does Row 0 have zeros?
  columns.times do |col|
    if matrix[0][col] == 0
      row_zero_zeroes = true
    end
  end

  column_zero_zeroes = false
  # Does Column 0 have zeros?
  rows.times do |row|
    if matrix[row][0] == 0
      column_zero_zeroes = true
    end
  end

  # Check (Rows 1 - n) and (Cols 1 - n)
  # Track found zeros through Row 0 and Col 0
  # (by changing corresponding element into 0)

  (rows - 1).times do |row|
    (columns - 1).times do |col|
      if matrix[row + 1][col + 1] == 0
        matrix[0][col + 1] = 0
        matrix[row + 1][0] = 0
      end
    end
  end

  # Look at an element inside matrix
  # Check corresponding element inside row 0 or col 0
  # Are either 0?  If so, change targeted element to 0

  (rows - 1).times do |row|
    (columns - 1).times do |col|
      if matrix[0][col + 1] == 0 || matrix[row + 1][0] == 0
        matrix[row + 1][col + 1] = 0
      end
    end
  end

  # IF Row 0 has zeros: Populate with 0
  if row_zero_zeroes
    columns.times do |col|
      matrix[0][col] = 0
    end
  end

  # IF Col 0 has zeros:  Populate with 0
  if column_zero_zeroes
    rows.times do |row|
      matrix[row][0] = 0
    end
  end

  return matrix
end
