# Suppose a sorted array is rotated at some pivot unknown to you beforehand.

# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

# Find the minimum element.

# You may assume no duplicate exists in the array.

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    n = nums.size
    left = 0
    right = n - 1
    while left < right
        mid = left + (right -left) / 2
        if(nums[mid] < nums[right])
            right = mid
        else
            left = mid + 1
        end
    end
    nums[left]
end