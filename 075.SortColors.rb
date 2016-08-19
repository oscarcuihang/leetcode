# Given an array with n objects colored red, white or blue, sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.

# Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.

# Note:
# You are not suppose to use the library's sort function for this problem.

# click to show follow up.

# Follow up:
# A rather straight forward solution is a two-pass algorithm using counting sort.
# First, iterate the array counting number of 0's, 1's, and 2's, then overwrite array with total number of 0's, then 1's and followed by 2's.

# Could you come up with an one-pass algorithm using only constant space?

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    return if nums.nil?
    n1 = 0
    n2 = nums.size - 1
    i = 0
    while i <= n2
        if nums[i] == 2
            nums[i], nums[n2] = nums[n2], nums[i]
            n2 -= 1
        elsif nums[i] == 0
            nums[i], nums[n1] = nums[n1], nums[i]
            n1 += 1
            i += 1
        else
            i += 1
        end
    end
end