# The thief has found himself a new place for his thievery again. 
# There is only one entrance to this area, called the "root." Besides the root, 
# each house has one and only one parent house. After a tour, 
# the smart thief realized that "all houses in this place forms a binary tree". 
# It will automatically contact the police if two directly-linked houses were broken into on the same night.

# Determine the maximum amount of money the thief can rob tonight without alerting the police.

# Example 1:
#      3
#     / \
#    2   3
#     \   \ 
#      3   1
# Maximum amount of money the thief can rob = 3 + 3 + 1 = 7.
# Example 2:
#      3
#     / \
#    4   5
#   / \   \ 
#  1   3   1
# Maximum amount of money the thief can rob = 4 + 5 = 9.


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def rob(root)
    dp_rob(root).max
end

def dp_rob(root)
    return [0,0] if root.nil?
    l = dp_rob(root.left)
    r = dp_rob(root.right)
    return [l.max + r.max, l[0] + r[0] + root.val]
end