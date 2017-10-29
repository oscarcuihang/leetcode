# 152. Maximum Product Subarray.rb
# Find the contiguous subarray within an array (containing at least one number) which has the largest product.

# For example, given the array [2,3,-2,4],
# the contiguous subarray [2,3] has the largest product = 6.

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    n = nums.size
    return 0 if n == 0
    
    max = min = product = nums[0]
    (1...n).each do |i|
        t1 = max * nums[i]
        t2 = min * nums[i]
        max = [[t1,t2].max, nums[i]].max
        min = [[t1,t2].min, nums[i]].min
        product = [product, max].max
    end
    product
end