# Given a binary tree, determine if it is height-balanced.

# For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    return true unless root
    is_balanced(root.left) && is_balanced(root.right) && (max_depth(root.left) - max_depth(root.right)).abs <= 1
end

def max_depth(root)
    root ? [max_depth(root.left),max_depth(root.right)].max + 1 : 0
end