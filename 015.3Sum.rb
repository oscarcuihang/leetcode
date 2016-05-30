# Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

# Note:
# Elements in a triplet (a,b,c) must be in non-descending order. (ie, a ≤ b ≤ c)
# The solution set must not contain duplicate triplets.
#     For example, given array S = {-1 0 1 2 -1 -4},

#     A solution set is:
#     (-1, 0, 1)
#     (-1, -1, 2)

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  length = nums.size
  result = []
  (length - 2).times do |i|
    if i==0 || i>0&&nums[i]!=nums[i-1]

    end
  end
end