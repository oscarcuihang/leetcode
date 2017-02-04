# 410. Split Array Largest Sum

# Given an array which consists of non-negative integers and an integer m, you can split the array into m non-empty continuous subarrays. Write an algorithm to minimize the largest sum among these m subarrays.

# Note:
# If n is the length of array, assume the following constraints are satisfied:

# 1 ≤ n ≤ 1000
# 1 ≤ m ≤ min(50, n)
# Examples:

# Input:
# nums = [7,2,5,10,8]
# m = 2

# Output:
# 18

# Explanation:
# There are four ways to split nums into two subarrays.
# The best way is to split it into [7,2,5] and [10,8],
# where the largest sum among the two subarrays is only 18.

# @param {Integer[]} nums
# @param {Integer} m
# @return {Integer}
def split_array(nums, m)
    size = nums.size
    high = nums.inject(0){|sum,i| sum + i }
    low = high/m
    while low <= high
        mid = (low + high) / 2
        n = m
        cnt = 0
        flag = true
        (0...size).each do |i|
            if nums[i] > mid
                flag = false
                break
            end
            if cnt + nums[i] > mid
                n -= 1
                cnt = 0
            end
            cnt += nums[i]
            if n == 0
                flag = false
                break
            end
        end
        if flag
            high = mid - 1
        else
            low = mid + 1
        end
    end
    low
end

# b-search 二分法查找
# 将数组nums拆分成m个子数组，每个子数组的和不小于 nums.sum / m，不大于nums.sum
# O(n*log m)，n=nums.size，m=nums.sum