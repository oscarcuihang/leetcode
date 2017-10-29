# Follow up for "Find Minimum in Rotated Sorted Array":
# What if duplicates are allowed?

# Would this affect the run-time complexity? How and why?
# Suppose a sorted array is rotated at some pivot unknown to you beforehand.

# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

# Find the minimum element.

# The array may contain duplicates.

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
   n = nums.size
   return 0 if n == 0
   left = 0 
   right = n - 1
    while left + 1 < right
        mid = (left + right) / 2
        if nums[mid] > nums[right]
            left = mid
        elsif nums[mid] < nums[right]
            right = mid
        else
            right -= 1
        end
    end
    [nums[right], nums[left]].min
end