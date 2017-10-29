# Given a binary tree, return the preorder traversal of its nodes' values.

# For example:
# Given binary tree {1,#,2,3},
#    1
#     \
#      2
#     /
#    3
# return [1,2,3].

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
def preorder_traversal(root)
    @res = []
     _preorder_traversal(root)
     @res
end

def _preorder_traversal(root)
    return @res if root.nil?
    @res << root.val
    _preorder_traversal(root.left)
    _preorder_traversal(root.right)

end