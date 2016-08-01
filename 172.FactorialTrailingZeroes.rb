# Given an integer n, return the number of trailing zeroes in n!.

# Note: Your solution should be in logarithmic time complexity.

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
    return n == 0 ? 0 : n/5 + trailing_zeroes(n/5);
end