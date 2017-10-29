# 415. Add Strings

# Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.

# Note:

# The length of both num1 and num2 is < 5100.
# Both num1 and num2 contains only digits 0-9.
# Both num1 and num2 does not contain any leading zero.
# You must not use any built-in BigInteger library or convert the inputs to integer directly.

# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
    res = ''
    carry  = 0
    idx1 = num1.size-1
    idx2 = num2.size-1
    while idx1>=0 || idx2>=0
        if idx1>=0
            carry += num1[idx1].to_i
                        idx1 -= 1

        end

        if idx2>=0
            carry += num2[idx2].to_i
                        idx2 -= 1

        end
        res = (carry%10).to_s + res
        carry /= 10
    end
    return '1' + res if !carry.zero?
    res
end
