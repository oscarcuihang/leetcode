# Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.

# Note: The solution set must not contain duplicate quadruplets.

# For example, given array S = [1, 0, -1, 0, -2, 2], and target = 0.

# A solution set is:
# [
#   [-1,  0, 0, 1],
#   [-2, -1, 1, 2],
#   [-2,  0, 0, 2]
# ]

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
    res =[]
    n = nums.size
    return [] if n == 0
    nums = nums.sort
    (0...(n-3)).each do |i|
        ((i+1)...n-2).each do |j|
            p = j + 1 
            q = n - 1
            while p != q 
                summer = nums[i] + nums[j] + nums[p] + nums[q]
                if summer == target
                    list_t = [nums[i],nums[j],nums[p],nums[q]]
                    if !res.include?(list_t)
                        res << list_t
                    end
                     p = p + 1
                elsif summer > target
                    q = q -1
                else
                    p = p + 1
                end
            end
        end
    end
    res
end