# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

# For example, given n = 3, a solution set is:

# [
#   "((()))",
#   "(()())",
#   "(())()",
#   "()(())",
#   "()()()"
# ]


# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    res =[]
    helper(n, n, '', res)
    res
end

def helper(left, right, str, res)
    if left == 0 && right == 0
        res << str
        return
    end
    
    helper(left - 1, right, str + '(', res) if left > 0
    helper(left, right - 1, str + ')', res) if right > left
end

