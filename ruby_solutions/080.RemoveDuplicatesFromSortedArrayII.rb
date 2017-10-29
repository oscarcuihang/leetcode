# 80. Remove Duplicates from Sorted Array II

# Follow up for "Remove Duplicates":
# What if duplicates are allowed at most twice?

# For example,
# Given sorted array nums = [1,1,1,2,2,3],

# Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3. It doesn't matter what you leave beyond the new length.

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    n = nums.size
    return n if n <= 2
    prev = 1
    curr = 2
    while curr < n
        if nums[curr] == nums[prev] && nums[curr] == nums[prev - 1]
            curr += 1
        else
            prev += 1
            nums[prev] = nums[curr]
            curr += 1
        end
    end
    prev + 1
end

# 快慢pointer
# 判断nums[curr]是否和nums[prev]、nums[prev-1]相等，
# 如果相等curr指针继续向后，直到不相等，将curr指针指向的值给nums[prev+1]，
# 多余的数就都被交换到后面去了。最后prev+1值就是数组的长度