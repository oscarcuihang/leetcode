# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this in place with constant memory.

# For example,
# Given input array nums = [1,1,2],

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    n = nums.size
    return n if n < 2
    count = 1
    (1..n-1).each do |i|
        if nums[i] != nums[i-1]
            nums[count] = nums[i] if nums[i] != nums[count]
            count = count + 1
        end
    end
    count

end