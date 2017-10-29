# 485. Max Consecutive Ones

# Example 1:
# Input: [1,1,0,1,1,1]
# Output: 3
# Explanation: The first two digits or the last three digits are consecutive 1s.
#     The maximum number of consecutive 1s is 3.
# Note:

# The input array will only contain 0 and 1.
# The length of input array is a positive integer and will not exceed 10,000

# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    n = nums.size
    return 0 if n == 0
    max = 0
    cur = 0
    (0..n).each do |i|
        if nums[i] == 1
            cur += 1
        else
            max = [max, cur].max
            cur = 0
        end
    end
    max
end