# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n*m) where n is the length of the matrix and m is the length of the longest array within the matrix.
# For both loops, the outer will run n times and the inner will run m times.
# Space complexity: O(n+m) where n is the length of the matrix and m is the length of the longest array within the matrix.
# The maximum number of values in the outer_indexes array will be equal to n and the maximum number of values in the 
# inner_indexes array will be equal to m.

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
