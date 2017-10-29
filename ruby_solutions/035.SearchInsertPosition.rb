# 35. Search Insert Position

# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You may assume no duplicates in the array.

# Here are few examples.
# [1,3,5,6], 5 → 2
# [1,3,5,6], 2 → 1
# [1,3,5,6], 7 → 4
# [1,3,5,6], 0 → 0


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    left = 0
    right = nums.size - 1
    while left <= right
        mid = left+(right-left)/2
        if nums[mid] == target
            return mid
        elsif nums[mid] < target
            left = mid + 1
        else
            right = mid - 1
        end
    end
    right + 1
end

# b-search,找到返回index，找不到返回index+1