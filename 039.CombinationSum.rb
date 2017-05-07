# 39. Combination Sum
# Given a set of candidate numbers (C) (without duplicates) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.

# The same repeated number may be chosen from C unlimited number of times.

# Note:
# All numbers (including target) will be positive integers.
# The solution set must not contain duplicate combinations.
# For example, given candidate set [2, 3, 6, 7] and target 7, 
# A solution set is: 
# [
#   [7],
#   [2, 2, 3]
# ]

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
    res = []
    dfs(candidates, target, 0, [], res)
    res
end

def dfs(nums, target, index, path, res)
    return if target < 0
    return res.push(path) if target == 0
    index.upto(nums.size-1)do |i|
        dfs(nums, target-nums[i], i, path+[nums[i]], res)
    end
end