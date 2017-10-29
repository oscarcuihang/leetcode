# 65. Valid Number

# Validate if a given string is numeric.

# Some examples:
# "0" => true
# " 0.1 " => true
# "abc" => false
# "1 a" => false
# "2e10" => true
# Note: It is intended for the problem statement to be ambiguous. You should gather all requirements up front before implementing one.

# @param {String} s
# @return {Boolean}
def is_number(s)
    s = s.strip
    start = 0
    last = s.size - 1
    
    start += 1 if start < last && (s[start] == '+' || s[start] == '-')
    num = false
    dot = false
    exp = false

    while start <= last
        if s[start].is_number?
            num = true 
        elsif s[start] == '.'
            return false if dot || exp
            dot = true
        elsif s[start] == 'e' || s[start] == 'E'
            return false if exp || !num
            exp = true
            num = false
        elsif s[start] == '+' || s[start] == '-'
            return false if s[start - 1] != 'e'
        else
            return false
        end
        start += 1
    end
    num
end

class String
    def is_number?
        Integer(self) != nil rescue false
    end
end