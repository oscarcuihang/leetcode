# You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

# Example:

# [[0,1,0,0],
#  [1,1,1,0],
#  [0,1,0,0],
#  [1,1,0,0]]

# Answer: 16
# Explanation: The perimeter is the 16 yellow stripes in the image below:

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    h = grid.size
    w = grid[0].size
    res = 0
    0.upto(h-1) do |i|
        0.upto(w-1) do |j|
            if grid[i][j] == 1
                res += 1 if(i==0 || grid[i-1][j] == 0)
                res += 1 if(i==h-1 || grid[i+1][j] == 0)
                res += 1 if(j==0 || grid[i][j-1] == 0)
                res += 1 if(j==w-1 || grid[i][j+1] == 0)
            end
        end
    end
    res
end