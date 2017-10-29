# Given a binary tree, return the inorder traversal of its nodes' values.

# For example:
# Given binary tree [1,null,2,3],
#    1
#     \
#      2
#     /
#    3
# return [1,3,2].

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}


def inorder_traversal(root)
     @res = []
     _inorder_traversal(root)
     @res
end

def _inorder_traversal(root)
    return @res if root.nil?
    _inorder_traversal(root.left)
    @res << root.val
    _inorder_traversal(root.right)
end