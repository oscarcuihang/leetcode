# Determine whether an integer is a palindrome. Do this without extra space.
# Some hints:
# Could negative integers be palindromes? (ie, -1)

# If you are thinking of converting the integer to string, note the restriction of using extra space.

# You could also try reversing an integer. However, if you have solved the problem "Reverse Integer", 
# you know that the reversed integer might overflow. How would you handle such case?

# There is a more generic way of solving this problem.


# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x<0
    
    k = 1
    while x / k >= 10
        k *= 10
    end

    while k > 0
        left = x/k
        right = x%10
        return false if left != right 
        x = ( x % k ) / 10
        k = k / 100
    end
    true
end