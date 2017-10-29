# mplement atoi to convert a string to an integer.

# Hint: Carefully consider all possible input cases. If you want a challenge, 
# please do not see below and ask yourself what are the possible input cases.

# Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). 
# You are responsible to gather all the input requirements up front.

# Requirements for atoi:
# The function first discards as many whitespace characters as necessary until 
# the first non-whitespace character is found. Then, starting from this character, 
# takes an optional initial plus or minus sign followed by as many numerical digits 
# as possible, and interprets them as a numerical value.

# The string can contain additional characters after those that form the integral number, 
# which are ignored and have no effect on the behavior of this function.

# If the first sequence of non-whitespace characters in str is not a valid integral number, 
# or if no such sequence exists because either str is empty or it contains only whitespace characters, 
# no conversion is performed.

# If no valid conversion could be performed, a zero value is returned. 
# If the correct value is out of the range of representable values, 
# INT_MAX (2147483647) or INT_MIN (-2147483648) is returned.

# @param {String} str
# @return {Integer}
def my_atoi(str)
    min_int = 2 ** (31) - 1
    max_int = -2 ** (31)
    
    index = 0
    index += 1 while str[index] == ' '
    
    positive = true
    
    if str[index] == '-'
        index+= 1
        positive = false
    elsif str[index] == '+'
        index+= 1
        positive = true
    else
        positive = true
    end
    
    sum = 0
    str[index..-1].each_char do |char|
        if char == '0'
            sum = sum * 10 + 0
        elsif char == '1'
            sum = sum * 10 + 1
        elsif char == '2'
            sum = sum * 10 + 2
        elsif char == '3'
            sum = sum * 10 + 3
        elsif char == '4'
            sum = sum * 10 + 4
        elsif char == '5'
            sum = sum * 10 + 5
        elsif char == '6'
            sum = sum * 10 + 6
        elsif char == '7'
            sum = sum * 10 + 7
        elsif char == '8'
            sum = sum * 10 + 8
        elsif char == '9'
            sum = sum * 10 + 9
        else
            break
        end
    end
    
    if positive
        [sum,min_int].min
    else
        [-sum,max_int].max
    end
end