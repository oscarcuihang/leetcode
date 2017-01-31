# 45. Jump Game II
# Given an array of non-negative integers, you are initially positioned at the first index of the array.

# Each element in the array represents your maximum jump length at that position.

# Your goal is to reach the last index in the minimum number of jumps.

# For example:
# Given array A = [2,3,1,1,4]

# The minimum number of jumps to reach the last index is 2. (Jump 1 step from index 0 to 1, then 3 steps to the last index.)

# Note:
# You can assume that you can always reach the last index.


# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
    curr_reach = 0
    last_reach = 0
    count = 0
    n = nums.size
    (0...n).each do |i|
        if last_reach < i
            last_reach = curr_reach
            count += 1
        end
        curr_reach = [curr_reach, nums[i] + i].max
    end
    count
end