# Given an array of integers, every element appears twice except for one. Find that single one.

# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

def single_number(nums)
    nums.inject(:^)
end