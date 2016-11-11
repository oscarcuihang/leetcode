# Given a non-empty integer array of size n, find the minimum number of moves required to make all array elements equal, where a move is incrementing n - 1 elements by 1.

# Example:

# Input:
# [1,2,3]

# Output:
# 3

# Explanation:
# Only three moves are needed (remember each move increments two elements):

# [1,2,3]  =>  [2,3,3]  =>  [3,4,3]  =>  [4,4,4]

# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
    n = nums.size
    return 0 if n.nil?
    sum = 0
    nums.each do |num|
        sum += num
    end
    sum - nums.min * n
end