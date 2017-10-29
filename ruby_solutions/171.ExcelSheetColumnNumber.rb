# Related to question Excel Sheet Column Title

# Given a column title as appear in an Excel sheet, return its corresponding column number.

# For example:

#     A -> 1
#     B -> 2
#     C -> 3
#     ...
#     Z -> 26
#     AA -> 27
#     AB -> 28 

# @param {String} s
# @return {Integer}
def title_to_number(s)
    res = 0
    s.each_char do |c|
        res = res * 26 + c.upcase.ord - 'A'.ord + 1
    end
    res
end 