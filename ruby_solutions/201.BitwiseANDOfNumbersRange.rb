# 201. Bitwise AND of Numbers Range
# Given a range [m, n] where 0 <= m <= n <= 2147483647, return the bitwise AND of all numbers in this range, inclusive.

# For example, given the range [5, 7], you should return 4.


# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def range_bitwise_and(m, n)
    c = 0
    while m != n
        m >>= 1
        n >>= 1
        c  += 1
    end
    m << c
end