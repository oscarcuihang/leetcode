# Given a string, find the length of the longest substring without repeating characters.

# Examples:

# Given "abcabcbb", the answer is "abc", which the length is 3.

# Given "bbbbb", the answer is "b", with the length of 1.

# Given "pwwkew", the answer is "wke", with the length of 3. 
# Note that the answer must be a substring, "pwke" is a subsequence and not a substring.


# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)  
    max = 0  
    hash = {}  
    si = -1  
    s.chars.each_with_index do |c, i|
        if ci = hash[c] and ci > si  
            si = ci  
        end  
        hash[c] = i  
        new_length = i - si  
        max = new_length if max < new_length  
    end 
    puts hash
    max  
end  