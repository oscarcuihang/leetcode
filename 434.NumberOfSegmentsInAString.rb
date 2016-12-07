# 434. Number of Segments in a String.rb

# Count the number of segments in a string, where a segment is defined to be a contiguous sequence of non-space characters.

# Please note that the string does not contain any non-printable characters.

# Example:

# Input: "Hello, my name is John"
# Output: 5

# @param {String} s
# @return {Integer}
def count_segments(s)
    count = 0
    (0...s.size).each do |i|
        count += 1 if (i == 0 && s[i] != ' ')
        count += 1 if (i>0&&s[i-1]==' '&&s[i]!=' ')
    end
    count
end