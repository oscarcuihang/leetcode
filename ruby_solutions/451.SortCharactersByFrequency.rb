# 451. Sort Characters By Frequency

# Given a string, sort it in decreasing order based on the frequency of characters.

# Example 1:

# Input:
# "tree"

# Output:
# "eert"

# Explanation:
# 'e' appears twice while 'r' and 't' both appear once.
# So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
# Example 2:

# Input:
# "cccaaa"

# Output:
# "cccaaa"

# Explanation:
# Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
# Note that "cacaca" is incorrect, as the same characters must be together.
# Example 3:

# Input:
# "Aabb"

# Output:
# "bbAa"

# Explanation:
# "bbaA" is also a valid answer, but "Aabb" is incorrect.
# Note that 'A' and 'a' are treated as two different characters.

# @param {String} s
# @return {String}
def frequency_sort(s)
    hash = {}
    s.each_char do |char|
        if hash[char]
            hash[char] += 1
        else
            hash[char] = 1
        end
    end
    hash= hash.sort_by{|k,v| v}.reverse
    res = ''
    hash.each do |key, val|
        (0...val).each do |i|
            res << key
        end
    end
    res
end