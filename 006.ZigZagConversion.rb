# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: 
# (you may want to display this pattern in a fixed font for better legibility)

# P       A       H       N
#   A   P   L   S   I   I   G
#     Y       I       R
# And then read line by line: "PAHNAPLSIIGYIR"
# Write the code that will take a string and make this conversion given a number of rows:

# string convert(string text, int nRows);
# convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1 || s.size<= num_rows
    res = ''
    zig = num_rows*2-2
    0.upto(num_rows - 1) do |row|
        0.upto(s.size.fdiv(zig).ceil - 1) do |i|
            base = zig * i
            res << s[base + row].to_s
            res << s[base + zig - row].to_s if row.between?(1, num_rows - 2)
        end
    end
    res
end