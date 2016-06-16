# Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

# Solve it without division and in O(n).

# For example, given [1,2,3,4], return [24,12,8,6].

# Follow up:
# Could you solve it with constant space complexity? (Note: The output array does not count as extra space for the purpose of space complexity analysis.)

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    result = []
    result[0] = 1
    (1..nums.size-1).each do |i|
        result[i] = result[i-1] * nums[i-1]
    end
    
    temp = 1
    ((nums.size)-2).downto(0) do |i|
         temp *= nums[i+1]
        result[i] *= temp
    end
    
    result
end