# A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

# The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

# How many possible unique paths are there?

# @param {Integer} m
# @param {Integer} n
# @return {Integer}

def unique_paths(m, n)
    grid = Array.new(m) { Array.new(n, 1) }
    1.upto(m - 1) do |i|
        1.upto(n - 1) do |j|
        grid[i][j] = grid[i - 1][j] + grid[i][j - 1]
        # puts grid[i][j]
        end
    end
    grid[m-1][n-1]
end