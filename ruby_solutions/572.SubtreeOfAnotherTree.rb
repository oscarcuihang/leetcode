# 572. Subtree of Another Tree
# Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.

# Example 1:
# Given tree s:

#      3
#     / \
#    4   5
#   / \
#  1   2
# Given tree t:
#    4 
#   / \
#  1   2
# Return true, because t has the same structure and node values with a subtree of s.
# Example 2:
# Given tree s:

#      3
#     / \
#    4   5
#   / \
#  1   2
#     /
#    0
# Given tree t:
#    4
#   / \
#  1   2
# Return false.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
    return false if s.nil?
    if is_same_tree(s, t) && s.val == t.val
        return true 
    else
        return is_subtree(s.left, t) || is_subtree(s.right, t)
    end
end

def is_same_tree(s, t)
    return true if s.nil? && t.nil?
    return false if ((!s.nil? && t.nil?) || (s.nil? && !t.nil?))
    return true if (s.val == t.val && is_same_tree(s.left , t.left) && is_same_tree(s.right , t.right)) 
    false
end