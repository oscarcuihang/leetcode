# 40. Combination Sum II

# Given a collection of candidate numbers (C) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.

# Each number in C may only be used once in the combination.

# Note:
# All numbers (including target) will be positive integers.
# The solution set must not contain duplicate combinations.
# For example, given candidate set [10, 1, 2, 7, 6, 1, 5] and target 8, 
# A solution set is: 
# [
#   [1, 7],
#   [1, 2, 5],
#   [2, 6],
#   [1, 1, 6]
# ]

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
    dfs(candidates.sort,0,[],[],target)
end

def dfs(nums,start,res,path,target)
    return if target < 0
    return res.push(path) if target == 0

    start.upto(nums.size-1)do |i|
        next if i!=start && nums[i]==nums[i-1]
        dfs(nums,i+1,res,path+[nums[i]],target-nums[i])
    end
    res
end