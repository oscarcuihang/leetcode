# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

# Note:
# You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. 
# The number of elements initialized in nums1 and nums2 are m and n respectively.

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    lastnum1 = m - 1
    lastnum2 = n - 1
    lastres = nums1.size - 1
     while lastnum1 >= 0 and lastnum2 >= 0
        if nums1[lastnum1] >= nums2[lastnum2]
            nums1[lastres] = nums1[lastnum1]
            lastnum1 -= 1
            lastres -= 1
        else
            nums1[lastres] = nums2[lastnum2]
            lastnum2 -= 1
            lastres -= 1
        end
    end
    while lastnum2 >= 0
        nums1[lastres] = nums2[lastnum2]
        lastnum2 -= 1
        lastres -= 1
    end
end