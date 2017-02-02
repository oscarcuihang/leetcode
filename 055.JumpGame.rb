# 55. Jump Game

# Given an array of non-negative integers, you are initially positioned at the first index of the array.

# Each element in the array represents your maximum jump length at that position.

# Determine if you are able to reach the last index.

# For example:
# A = [2,3,1,1,4], return true.

# A = [3,2,1,0,4], return false.

# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    n = nums.size
    return true if n <= 1
    index = 0
    reach = 0
    
    
    while index< n
        return false if reach < index
        reach = [reach,nums[index]+index].max
        index += 1
    end
    true
end

# 贪心算法 greedy
# 每一步查看fastest reach. 不能继续到end就是false