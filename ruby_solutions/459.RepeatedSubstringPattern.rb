# 459. Repeated Substring Pattern

# Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.

# Example 1:
# Input: "abab"

# Output: True

# Explanation: It's the substring "ab" twice.
# Example 2:
# Input: "aba"

# Output: False
# Example 3:
# Input: "abcabcabcabc"

# Output: True

# Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)


# @param {String} str
# @return {Boolean}
def repeated_substring_pattern(str)
    n = str.size
    return false if n < 0
    position = n/2
    while position > 0
        if n % position == 0
            substr = str[0...position]
            divisor = n / position
            return true if substr*divisor == str
        end
        position -= 1
    end
    false
end

# 'str' * 2 = 'strstr'
#  取str/2 * 2，取str/3 *3，最后去str/n * n 看是否是str