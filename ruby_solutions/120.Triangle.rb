# 120. Triangle

# Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.

# For example, given the following triangle
# [
#      [2],
#     [3,4],
#    [6,5,7],
#   [4,1,8,3]
# ]
# The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).

# Note:
# Bonus point if you are able to do this using only O(n) extra space, where n is the total number of rows in the triangle.


# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
    return triangle[0][0] if triangle.size < 2
    dp = triangle[-1]
    (triangle.size-2).downto(-1) do |i|
        0.upto(i) do |j|
            dp[j] = triangle[i][j] + [dp[j], dp[j + 1]].min
        end
    end
    dp[0]
end
