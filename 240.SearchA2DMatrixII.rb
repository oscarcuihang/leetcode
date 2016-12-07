# 240.Search A 2D Matrix II.rb

# Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

# Integers in each row are sorted in ascending from left to right.
# Integers in each column are sorted in ascending from top to bottom.
# For example,

# Consider the following matrix:

# [
#   [1,   4,  7, 11, 15],
#   [2,   5,  8, 12, 19],
#   [3,   6,  9, 16, 22],
#   [10, 13, 14, 17, 24],
#   [18, 21, 23, 26, 30]
# ]
# Given target = 5, return true.

# Given target = 20, return false.



# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    return false if matrix.nil?
    
    row = 0
    col = matrix[0].length - 1
    
    while (row < matrix.size && col >= 0) 
        curr = matrix[row][col]
        if(curr == target)
            return true
        elsif(curr < target)
            row += 1
        else
            col -= 1
        end
    end
    
    false
end

# 右上开始，比较target 和 matrix[i][j]的值
# row 没有 matrix[i][j] if matrix[i][j] < target, i++
# column 没有 matrix[i][j] if matrix[i][j] > target, j--
# no target if 边界
