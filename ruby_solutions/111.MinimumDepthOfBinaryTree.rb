# 111. Minimum Depth of Binary Tree
# Given a binary tree, find its minimum depth.

# The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

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
def min_depth(root)
    return 0 if root.nil?
    
    left = min_depth(root.left)
    right = min_depth(root.right)
    return left + right + 1 if (left == 0 || right == 0)
    [left,right].min + 1
end

# DFS