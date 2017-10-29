# Given a binary tree, return the postorder traversal of its nodes' values.

# For example:
# Given binary tree {1,#,2,3},
#    1
#     \
#      2
#     /
#    3
# return [3,2,1].


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
def postorder_traversal(root)
     @res = []
     _postorder_traversal(root)
     @res
end

def _postorder_traversal(root)
    return @res if root.nil?
    _postorder_traversal(root.left)
    _postorder_traversal(root.right)
    @res << root.val

end