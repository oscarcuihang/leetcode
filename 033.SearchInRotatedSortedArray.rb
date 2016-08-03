# Suppose a sorted array is rotated at some pivot unknown to you beforehand.

# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

# You are given a target value to search. If found in the array return its index, otherwise return -1.

# You may assume no duplicate exists in the array.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left = 0
    right = nums.size - 1
    while left <= right
        mid = (left + right) / 2
        return mid if nums[mid] == target
        if nums[mid] >= nums[left]
            if nums[left] <= target && target < nums[mid]
                right = mid - 1
            else
                left = mid + 1
            end
        else
            if nums[mid] < target && target <= nums[right]
                left = mid + 1
            else
                right = mid - 1
            end
        end
    end
    return -1
end