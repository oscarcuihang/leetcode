# A peak element is an element that is greater than its neighbors.

# Given an input array where num[i] ≠ num[i+1], find a peak element and return its index.

# The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.

# You may imagine that num[-1] = num[n] = -∞.

# For example, in array [1, 2, 3, 1], 3 is a peak element and your function should return the index number 2.

# click to show spoilers.

# Note:
# Your solution should be in logarithmic complexity.

# S1
# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    n = nums.size
    0.upto(n-2) do |i|
        return i if nums[i] > nums[i+1]
    end
    n-1
end


# S2
# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    left = 0
    right = nums.size - 1
    while left < right
        mid1 = (left + right)/2
        mid2 = mid1 + 1
        if nums[mid1] < nums[mid2]
            left = mid2
        else
            right = mid1
        end
    end
    left
end