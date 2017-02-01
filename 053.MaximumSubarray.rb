# 053. Maximum Subarray
# Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

# For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
# the contiguous subarray [4,-1,2,1] has the largest sum = 6.

# @param {Integer[]} nums
# @return {Integer}

# S1
def max_sub_array(nums)
    return 0 if nums.nil? || nums.size == 0
    max_sum = nums[0]
    min_sum = 0
    sum = 0
    nums.each do |num|
        sum += num
        if sum - min_sum > max_sum
            max_sum = sum - min_sum
        end
        if sum < min_sum
            min_sum = sum
        end
    end
    max_sum
end

# S2
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max = -(2**(0.size * 8 -2))
    sum = 0
    nums.each do |num|
        if sum < 0
            sum = num
        else
            sum += num
        end
        max = [max, sum].max
    end
    max
end

# 规划。sum?，sum 的 max is result。对于当前值 num，if sum < 0, 
# num 前的一小段值的和小于0，如果再与 num 相加，得到的和还不如0与 num 相加的值来的大，因而 sum == num；
# if sum > 0，那么与 num 相加肯定大于 num，为此 sum == num + sum。
#   以[−2,1,−3,4,−1,2,1,−5,4]为例进行说明。sum 的值为[−2,1,−2,4,3,5,6,1,5]，那么很显然，max = 6