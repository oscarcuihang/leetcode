# 448. Find All Numbers Disappeared in an Array

# Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

# Find all the elements of [1, n] inclusive that do not appear in this array.

# Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

# Example:

# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [5,6]

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    dis_num = []
    n = nums.size
    (0...n).each do |i|
        nums[nums[i].abs - 1 ] = -(nums[nums[i].abs - 1]).abs
    end
    
    (0...n).each do |i|
        dis_num << i+1 if nums[i] > 0
    end
    dis_num
end

# 正负号标记
# loop1, 把当前元素nums[i]作为idx, 将其所对应元素的绝对值取负,nums[abs(nums[i])] = -abs(nums[abs(nums[i])])
# loo2, 把正数元素对应的下标+1加入结果集。 