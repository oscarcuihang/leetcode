# 102. Binary Tree Level Order Traversal

# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its level order traversal as:
# [
#   [3],
#   [9,20],
#   [15,7]
# ]

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    res = []
    pre_order(root, 0, res)
    res
end

def pre_order(root, level, res)
    return if root.nil?
    res << [] if res.size < level+1
    res[level] << root.val
    pre_order(root.left, level+1, res)
    pre_order(root.right, level+1, res)
    
end