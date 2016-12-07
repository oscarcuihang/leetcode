# 179. Largest Number.rb

# Given a list of non negative integers, arrange them such that they form the largest number.

# For example, given [3, 30, 34, 5, 9], the largest formed number is 9534330.

# Note: The result may be very large, so you need to return a string instead of an integer.

# S1 Ruby BM
# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
    f = ->(x1, x2) { x2 + x1 <=> x1 + x2 }
    n = nums.map(&:to_s).sort(&f).reduce(&:+)
    n[(n.index(/[^0]/) || -1)..-1]
end