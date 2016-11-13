# Given a collection of integers that might contain duplicates, nums, return all possible subsets.

# Note: The solution set must not contain duplicate subsets.

# For example,
# If nums = [1,2,2], a solution is:

# [
#   [2],
#   [1],
#   [1,2,2],
#   [2,2],
#   [1,2],
#   []
# ]

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
    res = [[]]
    return res if nums.nil?
    nums = nums.sort
    temp_size = 0
    0.upto(nums.size-1) do |i|
        if i >= 1 && nums[i] == nums[i-1]
            start = temp_size 
        else
            start = 0
        end
        temp_size = res.size - 1
        (start..temp_size).each do |j|
            res << (res[j]+ [nums[i]])
        end
    end
    res.uniq
end