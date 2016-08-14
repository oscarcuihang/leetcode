# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Example: 19 is a happy number

# 1^2 + 9^2 = 82
# 8^2 + 2^2 = 68
# 6^2 + 8^2 = 100
# 1^2 + 0^2 + 0^2 = 1

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
hash=Hash.new
    while hash[n].nil? 
        n = hash[n] = n.to_s.chars.inject(0){|m,c| m+c.to_i*c.to_i }
        puts n
    end
    n == 1
end