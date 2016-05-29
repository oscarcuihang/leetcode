# Given two arrays, write a function to compute their intersection.

# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].

# Note:
# Each element in the result should appear as many times as it shows in both arrays.
# The result can be in any order.
# Follow up:
# What if the given array is already sorted? How would you optimize your algorithm?
# What if nums1's size is small compared to num2's size? Which algorithm is better?
# What if elements of nums2 are stored on disk, 
# and the memory is limited such that you cannot load all elements into the memory at once?

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    if nums1.size < nums2.size
        temp = nums1
        nums1 = nums2
        nums2 = temp
    end

    hash = {}
    res = []
    
    nums1.each do |num1|
        if hash[num1] != nil
            hash[num1] = hash[num1] + 1
        else
            hash[num1] = 1
        end
    end
    
    nums2.each do |num2|
      if hash.has_key?(num2) && hash[num2] != 0
        res << num2
        hash[num2] = hash[num2] - 1
      end
    end

    res

end