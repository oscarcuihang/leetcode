# Given a string S and a string T, count the number of distinct subsequences of T in S.

# A subsequence of a string is a new string which is formed from the original string by 
# deleting some (can be none) of the characters without disturbing the relative positions 
# of the remaining characters. (ie, "ACE" is a subsequence of "ABCDE" while "AEC" is not).

# Here is an example:
# S = "rabbbit", T = "rabbit"

# Return 3.


# @param {String} s
# @param {String} t
# @return {Integer}
def num_distinct(s, t)
    s_size = s.size
    t_size = t.size
    puts s_size
    puts t_size
    dp = Array.new(t_size + 1){Array.new(s_size + 1)} 
    
    0.upto(s_size).each {|i| dp[0][i] = 1}
    1.upto(t_size).each {|j| dp[j][0] = 0}
    
    1.upto(t_size) do |i|
      1.upto(s_size) do |j|
        dp[i][j] = dp[i][j-1]
        dp[i][j] += dp[i-1][j-1]  if s[j-1] == t[i-1]
      end
    end
    dp[t_size][s_size]
end