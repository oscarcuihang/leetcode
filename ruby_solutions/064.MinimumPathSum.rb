# 64. Minimum Path Sum
# Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.

# Note: You can only move either down or right at any point in time.

# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
    return 0 if grid.nil? or grid[0].nil?
    0.upto(grid.size-1) do |row|
        0.upto(grid[0].size-1) do |col|
            if row>0 && col>0
                grid[row][col] += [grid[row-1][col],grid[row][col-1]].min
            elsif row>0
                grid[row][col] += grid[row-1][col]
            elsif col>0
                grid[row][col] += grid[row][col-1]
            end
        end
    end
    grid[grid.size-1][grid[0].size-1]
end