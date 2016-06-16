# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []

    s.each_char do |char|
        if char == '(' || char == '[' || char =='{'
            stack.push(char)
        elsif char == ')'
            return false if stack.pop != '('
        elsif char == ']'
            return false if stack.pop != '['
        elsif char == '}'  
            return false if stack.pop != '{'
        else
            nil
        end
    end
    stack.empty?
end