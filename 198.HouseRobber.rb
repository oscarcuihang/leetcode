# You are a professional robber planning to rob houses along a street. Each house has a certain 
# amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent
# houses have security system connected and it will automatically contact the police if two adjacent 
# houses were broken into on the same night.

# Given a list of non-negative integers representing the amount of money of each house, 
# determine the maximum amount of money you can rob tonight without alerting the police.

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return 0 if nums.size == 0
    return nums.max if nums.size <= 2
    dp = Array.new
    dp[0] = nums[0]
    dp[1] = [nums[0],nums[1]].max
    dp[2]=[nums[0]+nums[2], nums[1]].max
    for i in 3..nums.size-1
      dp[i]=[dp[i-3]+nums[i], dp[i-2]+nums[i], dp[i-1]].max
    end
    dp.last
end