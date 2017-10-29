# 59. Spiral Matrix II

# Given an integer n, generate a square matrix filled with elements from 1 to n2 in spiral order.

# For example,
# Given n = 3,

# You should return the following matrix:
# [
#  [ 1, 2, 3 ],
#  [ 8, 9, 4 ],
#  [ 7, 6, 5 ]
# ]

# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
    res = Array.new(n){Array.new(n)}
    return res if n < 1
    up = 0
    down = n -1
    left = 0
    right = n - 1
    k = 1
    while true
        # up
        left.upto(right) do |col|
            res[up][col] = k
            k += 1
        end
        up += 1
        break if up > down

        # right
        up.upto(down) do |row|
            res[row][right] = k
            k += 1
        end
        right -= 1
        break if right < left
            
        # down
        right.downto(left) do |col|
            res[down][col] = k
            k += 1
        end
        down -= 1
        break if down < up
        # left
        
        down.downto(up) do |row|
            res[row][left] = k
            k += 1
        end
        left += 1
        break if left > right
    end
    res
end