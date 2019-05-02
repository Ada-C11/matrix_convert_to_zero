require "pry"

# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: ?
# Space complexity: ?
# def initialize_matrix(rows, columns)
#   # create the matrix using the rows and columns
#   matrix = Array.new(rows) { Array.new(columns) }

#   # initialize the matrix
#   rows.times do |row|
#     columns.times do |column|
#       matrix[row][column] = 1
#     end
#   end

#   return matrix
# end

# matrix = initialize_matrix(3, 5)
# matrix[1][3] = 0
# matrix[2][4] = 0

def matrix_convert_to_zero(matrix)
  outer_indexes = []
  inner_indexes = []

  matrix.each_with_index do |arr, outer_index|
    arr.each_with_index do |num, inner_index|
      if num == 0
        if !outer_indexes.include?(outer_index)
          outer_indexes << outer_index
        end
        if !inner_indexes.include?(inner_index)
          inner_indexes << inner_index
        end
      end
    end
  end

  matrix.each_with_index do |arr, outer_index|
    if outer_indexes.include?(outer_index)
      arr.each_with_index do |num, inner_index|
        if num == 1
          arr[inner_index] = 0
        end
      end
    end
    arr.each_with_index do |num, inner_index|
      if inner_indexes.include?(inner_index) && num == 1
        arr[inner_index] = 0
      end
    end
  end

  return matrix
end

# matrix_convert_to_zero(matrix)
