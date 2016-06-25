# Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

# Note: The solution set must not contain duplicate triplets.

# For example, given array S = [-1, 0, 1, 2, -1, -4],

# A solution set is:
# [
#   [-1, 0, 1],
#   [-1, -1, 2]
# ]



# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    res = []
    nums.sort!
    n = nums.size 
    (0..n-3).each do |i|
        lower = i + 1
        upper = n - 1
        while (lower < upper) do
            sum = nums[i] + nums[lower] + nums[upper]
            if sum == 0
                a = []
                a <<  nums[i]
                a <<  nums[lower]
                a <<  nums[upper]
                res << a
                upper = upper - 1
            elsif sum > 0
                upper = upper - 1
            else
                lower = lower + 1
            end
        end
    end
    res.uniq
end