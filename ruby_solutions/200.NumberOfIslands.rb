# 200. Number of Islands

# Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

# Example 1:

# 11110
# 11010
# 11000
# 00000
# Answer: 1

# Example 2:

# 11000
# 11000
# 00100
# 00011
# Answer: 3


# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
    res = 0
    # 遍历这个2维矩阵, 对于每一个点为1, 进行dfs
    (0...grid.size).each do |i|
        (0...grid[i].size).each do |j|
            if grid[i][j] == '1'
                dfs(grid, i, j)
                res += 1
            end
        end
    end
    res
end

def dfs(grid, x, y)
    # 判断是否越界, 并判断当前元素是否满足搜索条件
    return if x < 0 || x >= grid.size || y < 0 || y >= grid[x].size || grid[x][y] != '1'
    grid[x][y] = '0'
    # 对上点做递归dfs
    dfs(grid, x - 1, y)
    # 对下点做递归dfs
    dfs(grid, x + 1, y)
    # 对左点做递归dfs
    dfs(grid, x, y - 1)
    # 对右点做递归dfs
    dfs(grid, x, y + 1)
end