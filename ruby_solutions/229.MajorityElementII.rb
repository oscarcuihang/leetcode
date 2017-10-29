# Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times. The algorithm should run in linear time and in O(1) space.

# Hint:

# How many majority elements could it possibly have?
# Do you have a better hint? 

# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    c1 = 0
    c2 = 0
    candidate1 = nil
    candidate2 = nil

    nums.each do |num|
        if candidate1 == num
            c1 += 1
        elsif candidate2 == num
            c2 += 1
        elsif c1 == 0
            c1 += 1
            candidate1 = num
        elsif c2 == 0
            c2 += 1
            candidate2 = num
        else
            c1 -= 1
            c2 -= 1
        end
    end
    c1 = 0
    c2 = 0
    nums.each do |num|
        c1 += 1 if num == candidate1
        c2 += 1 if num == candidate2
    end
    res = []
    res << candidate1 if c1 > nums.size / 3
    res << candidate2 if c2 > nums.size / 3
    res
end