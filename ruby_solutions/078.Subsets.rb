# 78. Subsets
# Given a set of distinct integers, nums, return all possible subsets.

# Note: The solution set must not contain duplicate subsets.

# For example,
# If nums = [1,2,3], a solution is:

# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]


# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    res = []
    dfs(nums.sort, 0, [], res)
    res
end

def dfs(nums, index, list, res)
    res.push(list)
    n = nums.size
    index.upto(n-1) do |i|
        dfs(nums, i+1, list+[nums[i]], res)
    end
end