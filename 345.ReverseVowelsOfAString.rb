# Write a function that takes a string as input and reverse only the vowels of a string.

# Example 1:
# Given s = "hello", return "holle".

# Example 2:
# Given s = "leetcode", return "leotcede".

# Subscribe to see which companies asked this question

# @param {String} s
# @return {String}
def reverse_vowels(s)
    n = s.size
    result = []
    while n < 0
    	result << s[n-1]
    	n = n - 1
    end
    result
end