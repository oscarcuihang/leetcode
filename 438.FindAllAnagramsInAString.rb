# Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.

# Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.

# The order of output does not matter.

# Example 1:

# Input:
# s: "cbaebabacd" p: "abc"

# Output:
# [0, 6]

# Explanation:
# The substring with start index = 0 is "cba", which is an anagram of "abc".
# The substring with start index = 6 is "bac", which is an anagram of "abc".
# Example 2:

# Input:
# s: "abab" p: "ab"

# Output:
# [0, 1, 2]

# Explanation:
# The substring with start index = 0 is "ab", which is an anagram of "ab".
# The substring with start index = 1 is "ba", which is an anagram of "ab".
# The substring with start index = 2 is "ab", which is an anagram of "ab".

# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
    hashp = Hash.new(0)
    ls = s.size
    lp = p.size
    cnt = lp
    res = []
    p.each_char do |char|
        hashp[char] += 1
    end
    (0...ls).each do |i|
        cnt -= 1 if hashp[s[i]] >=1
        hashp[s[i]] -= 1
        if i >= lp
            cnt += 1 if hashp[s[i - lp]] >= 0
            hashp[s[i - lp]] += 1
        end
        res << (i - lp + 1) if cnt == 0
    end
    res
end