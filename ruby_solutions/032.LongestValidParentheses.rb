# 032. Longest Valid Parentheses

# Given a string containing just the characters '(' and ')', find the length of the longest valid (well-formed) parentheses substring.

# For "(()", the longest valid parentheses substring is "()", which has length = 2.

# Another example is ")()())", where the longest valid parentheses substring is "()()", which has length = 4.

# Subscribe to see which companies asked this question

# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
    return 0 if s.nil?
    res = 0
    stack = []
    
    bound = s.index('(') || s.size
    stack.push(bound - 1)
    bound.upto(s.size - 1) do |idx|
    if s[idx] == '('
      stack.push(idx); next
    end

    stack.pop
    if stack.empty?
      stack.push(idx)
    else
      res = [res, idx - stack[-1]].max
    end
  end

  res
end