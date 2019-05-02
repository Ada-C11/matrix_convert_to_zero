# Time complexity: O(n*m), where n and m are nums of rows and columns
# Space complexity: O(n + m), where n and m are nums of rows and columns

def matrix_convert_to_zero(matrix)
  return nil if matrix.empty?

  rows = matrix.size
  columns = matrix[0].size

  rows.times do |row|
    columns.times do |column|
      matrix[row][column] = "ZERO" if matrix[row][column] == 0
    end
  end

  rows.times do |row|
    columns.times do |column|
      next unless matrix[row][column] == "ZERO"

      columns.times { |i| matrix[row][i] = 0 unless matrix[row][i] == "ZERO" }
      rows.times { |i| matrix[i][column] = 0 unless matrix[i][column] == "ZERO" }
      matrix[row][column] = 0
    end
  end
end