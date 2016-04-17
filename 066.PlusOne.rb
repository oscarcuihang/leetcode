# Given a non-negative number represented as an array of digits, plus one to the number.

# The digits are stored such that the most significant digit is at the head of the list.

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits[-1] += 1
    (digits.size-1).downto(1) do |i|
        return digits if digits[i] < 10
        digits[i] = 0
        digits[i-1] += 1
    end
    if digits[0]==10
        result = [1,0]
        result += digits[1..-1]
        return result
    end
    digits
end