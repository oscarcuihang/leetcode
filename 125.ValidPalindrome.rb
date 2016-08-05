# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# For example,
# "A man, a plan, a canal: Panama" is a palindrome.
# "race a car" is not a palindrome.

# Note:
# Have you consider that the string might be empty? This is a good question to ask during an interview.

# For the purpose of this problem, we define empty string as valid palindrome.


# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    left = 0
    right = s.size - 1
    while left < right 
        while left < right && !s[left].match(/^[[:alpha:]]/) && !s[left].match(/^[[:digit:]]/)
            left +=1
        end
        while left < right && !s[right].match(/^[[:alpha:]]/) && !s[right].match(/^[[:digit:]]/)
            right -= 1
        end
        return false if left < right && s[left].downcase != s[right].downcase
        left += 1
        right -= 1
    end
    return true
end