# Given an unsorted integer array, find the first missing positive integer.

# For example,
# Given [1,2,0] return 3,
# and [3,4,-1,1] return 2.

# Your algorithm should run in O(n) time and uses constant space.


# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
    n = nums.size
    return 1 if n == 0
    i = 0
    while i < n
        while nums[i]!=i+1 and nums[i]<=n and nums[i]>0 and nums[i]!=nums[nums[i]-1]
            t = nums[i]
            nums[i] = nums[nums[i]-1] 
            nums[t-1] = t
        end
        i += 1
    end
    (0..n).each do |i|
        return i+1 if nums[i] != i+1
    end    
    n+1
end