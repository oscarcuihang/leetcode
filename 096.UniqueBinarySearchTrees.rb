# 096.UniqueBinarySearchTrees.rb

# Given n, how many structurally unique BST's (binary search trees) that store values 1...n?

# For example,
# Given n = 3, there are a total of 5 unique BST's.

#    1         3     3      2      1
#     \       /     /      / \      \
#      3     2     1      1   3      2
#     /     /       \                 \
#    2     1         2                 3

# @param {Integer} n
# @return {Integer}
def num_trees(n)
    dp = Array.new(n + 1, 0)
    dp[0] = 1
    (1..n).each do |i|
        (0...i).each do |j|
            dp[i] += dp[j]*dp[i-1-j]
        end
    end
    dp[n]
end
