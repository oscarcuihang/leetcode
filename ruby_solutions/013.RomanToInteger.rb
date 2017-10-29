# Given a roman numeral, convert it to an integer.

# Input is guaranteed to be within the range from 1 to 3999.

# @param {String} s
# @return {Integer}


def roman_to_int(s)
    hash = [['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000]].to_h
    
    return 0 if s==""
    
    %w[M D C L X V I].each do |ch|
        next if !s.include? ch
        ci = s.index(ch)
        return hash[ch] + roman_to_int(s[ci+1..-1]) - roman_to_int(s[0...ci])
    end
end