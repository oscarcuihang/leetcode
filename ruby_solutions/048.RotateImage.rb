# You are given an n x n 2D matrix representing an image.

# Rotate the image by 90 degrees (clockwise).

# Follow up:
# Could you do this in-place?

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    n = matrix.size
    
    (0...n).each do |i|
        (i...n).each do |j|
          matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
        end
    end
    matrix.each(&:reverse!); nil
end