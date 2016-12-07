# 409. Longest Palindrome.rb

# Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

# This is case sensitive, for example "Aa" is not considered a palindrome here.

# Note:
# Assume the length of given string will not exceed 1,010.

# Example:

# Input:
# "abccccdd"

# Output:
# 7

# Explanation:
# One longest palindrome that can be built is "dccaccd", whose length is 7.

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
    return 0 if s.size == 0
    hash = Hash.new()
    res = 0
    odd = 0
    s.each_char do |char|
        if hash.has_key?(char)
            hash[char] += 1
        else
            hash[char] = 1 
        end
    end
    print hash
    hash.each do |k, v|
        res += v
        if v%2==1
            res -= 1
            odd += 1
        end
    end
    return res + 1 if odd > 0
    res
end

# 统计每个字母的出现次数：

# 若字母出现偶数次，则直接累加至最终结果

# 若字母出现奇数次，则将其值-1之后累加至最终结果

# 若存在出现奇数次的字母，将最终结果+1