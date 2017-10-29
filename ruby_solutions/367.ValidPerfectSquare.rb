# Given a positive integer num, write a function which returns True if num is a perfect square else False.

# Note: Do not use any built-in library function such as sqrt.

# Example 1:

# Input: 16
# Returns: True
# Example 2:

# Input: 14
# Returns: False


# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
    return false if num < 1
    return true if num == 1
    left = 0
    right = num/2
    while left <= right
        mid = (left+right)/2
        product = mid * mid
        if product == num
            return true
        elsif product > num
            right = mid - 1
        else
            left = mid + 1
        end
    end
    false
end