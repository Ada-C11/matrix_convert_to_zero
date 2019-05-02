# Time complexity: O(n * m) where n is the number of rows and m is the number of columns.
# Space complexity: O(n + m), where n represents the number of rows that contain a zero, and m
# represents the number of columns that contain zero.
def matrix_convert_to_zero(matrix)
  rows = matrix.length
  cols = matrix[0].length
  row_zero = []
  col_zero = []

  rows.times do |row|
    cols.times do |col|
      if matrix[row][col] == 0
        row_zero << row
        col_zero << col
      end
    end
  end

  row_zero.uniq.each do |row|
    cols.times do |col|
      matrix[row][col] = 0
    end
  end

  col_zero.uniq.each do |col|
    rows.times do |row|
      matrix[row][col] = 0
    end
  end

  return matrix
end
