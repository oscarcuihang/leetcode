
# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

# For example,
# Given nums = [0, 1, 3] return 2.

# Note:
# Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?



# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.each_with_index.map{|n,i| n^(i+1)}.inject{|result,i| result^=i }
end

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    n = nums.size
    sum = 0
    (0...n).each do |i|
        sum += nums[i]
    end
    return n * (n + 1) / 2 - sum
end

# 等差数列前n项和 - 数组之和

