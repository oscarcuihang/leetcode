# Given an array of strings, group anagrams together.

# For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"], 
# Return:

# [
#   ["ate", "eat","tea"],
#   ["nat","tan"],
#   ["bat"]
# ]


# S1 Ruby Black Magic...
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    strs.group_by(&->(s){ s.chars.sort.join }).values.map(&:sort)
end

#2
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    strs.group_by { |element| element.downcase.chars.sort }.values
end