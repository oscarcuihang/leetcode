# 557. Reverse Words in a String III

# Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

# Example 1:
# Input: "Let's take LeetCode contest"
# Output: "s'teL ekat edoCteeL tsetnoc"
# Note: In the string, each word is separated by single space and there will not be any extra space in the string.

# @param {String} s
# @return {String}
def reverse_words(s)
    words = s.split(" ")
    res = []
    words.each do |word|
        temp = ''
        (word.size-1).downto(0) do |i|
            temp << word[i]
        end
        res << temp
    end
    res.join(' ')
end