# Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

# Integers in each row are sorted from left to right.
# The first integer of each row is greater than the last integer of the previous row.
# For example,

# Consider the following matrix:

# [
#   [1,   3,  5,  7],
#   [10, 11, 16, 20],
#   [23, 30, 34, 50]
# ]
# Given target = 3, return true.

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    n = matrix.size
    return false if n == 0
    m = matrix[0].size
    left = 0
    right =  n * m - 1
    while left + 1 < right
        mid = (left + right) / 2
        x = mid/m
        y =  mid % m
        if matrix[x][y] < target
            left= mid
        else
            right = mid
        end
    end
    x, y = left / m, left % m
    return true if matrix[x][y] == target
    x, y = right / m, right % m
    return true if matrix[x][y] == target
    false
end