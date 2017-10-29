# 7. Reverse Integer
# Reverse digits of an integer.

# Example1: x = 123, return 321
# Example2: x = -123, return -321

# click to show spoilers.

# Have you thought about this?
# Here are some good questions to ask before coding. Bonus points for you if you have already thought through this!

# If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100.

# Did you notice that the reversed integer might overflow? Assume the input is a 32-bit integer, then the reverse of 1000000003 overflows. How should you handle such cases?

# For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.



#S1
# @param {Integer} x
# @return {Integer}
def reverse(x)
    return -1 * reverse(-1 * x) if x < 0
    res = x.to_i.reverse.to_i
    return 0 if res > 2 ** 32 - 1
    res
end


#S2
# @param {Integer} x
# @return {Integer}
def reverse(x)
    max = 2**31-1
    return -reverse(-x) if x < 0
    sum = 0
    while x > 0
        sum = sum*10 + x%10
        x = x / 10
    end
    sum > max ? 0 : sum
end