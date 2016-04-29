# Given an integer, write a function to determine if it is a power of three.

# Follow up:
# Could you do it without using any loop / recursion?

# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    return false if n < 1
    (Math.log(n)/Math.log(3)).round(14) % 1 == 0
end