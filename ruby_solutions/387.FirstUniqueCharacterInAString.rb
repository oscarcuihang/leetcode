# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

# Examples:

# s = "leetcode"
# return 0.

# s = "loveleetcode",
# return 2.
# Note: You may assume the string contain only lowercase letters.

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    hash = Hash.new(0)
    s.each_char { |char| hash[char] +=1 }
    s.each_char.with_index  do |char, index|
        return index if hash[char] == 1
    end
    -1
end