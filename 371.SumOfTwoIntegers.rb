# Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.

# Example:
# Given a = 1 and b = 2, return 3.

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
    mod = 0xFFFFFFFF
    max_int = 0x7FFFFFFF
    while b != 0
        a, b = (a ^ b) & mod, ((a & b) << 1) & mod
    end
    return a if a <= max_int else ~(a & max_int) ^ max_int
end