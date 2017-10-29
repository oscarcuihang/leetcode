# 63. Unique Paths II

# Follow up for "Unique Paths":

# Now consider if some obstacles are added to the grids. How many unique paths would there be?

# An obstacle and empty space is marked as 1 and 0 respectively in the grid.

# For example,
# There is one obstacle in the middle of a 3x3 grid as illustrated below.

# [
#   [0,0,0],
#   [0,1,0],
#   [0,0,0]
# ]
# The total number of unique paths is 2.

# Note: m and n will be at most 100.

# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
    return 0 if obstacle_grid[0][0] == 1
    m = obstacle_grid.size
    n = obstacle_grid[0].size
    dp = Array.new(m){Array.new(n,0)}
    dp[0][0] = 1

    (1...m).each do |i|
        if obstacle_grid[i][0] == 0
            dp[i][0] = dp[i - 1][0]
        else
            dp[i][0] = 0
        end
    end
    
    (1...n).each do |i|
        if obstacle_grid[0][i] == 0
            dp[0][i] = dp[0][i - 1]
        else
            dp[0][i] = 0
        end
    end
    
    (1...m).each do |i|
        (1...n).each do |j|
            if obstacle_grid[i][j] == 1
                dp[i][j] = 0
            else
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            end
        end
    end
    dp[m-1][n-1]
end