# Given an integer (signed 32 bits), write a function to check whether it is a power of 4.

# Example:
# Given num = 16, return true. Given num = 5, return false.

# Follow up: Could you solve it without loops/recursion?

# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
    return false if num < 1
    (Math.log(num)/Math.log(4)).round(14) % 1 == 0
end