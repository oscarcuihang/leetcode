# Given two arrays, write a function to compute their intersection.

# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].

# Note:
# Each element in the result must be unique.
# The result can be in any order.


# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}

#solution1
def intersection(nums1, nums2)
    hash = {}
    res = []
    nums1.each do |num1|
      hash[num1] = 1
    end
    nums2.each do |num2|
      if hash.has_key?(num2)
        res << num2
        hash.delete(num2)
      end
    end
    res
end

#solution2
def intersection(nums1, nums2)
    hash = {}
    res = []
    nums1.each do |num1|
      hash[num1] = 1
    end
    nums2.each do |num2|
      if hash.has_key?(num2)
        res << num2
        hash.delete(num2)
      end
    end
    res
end
