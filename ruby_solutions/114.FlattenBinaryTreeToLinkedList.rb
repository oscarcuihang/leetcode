# Given a binary tree, flatten it to a linked list in-place.

# For example,
# Given

#          1
#         / \
#        2   5
#       / \   \
#      3   4   6
# The flattened tree should look like:
#    1
#     \
#      2
#       \
#        3
#         \
#          4
#           \
#            5
#             \
#              6
# click to show hints.

# Hints:
# If you notice carefully in the flattened tree, each node's right child points to the next node of a pre-order traversal.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    return if root.nil?
    
    flatten(root.left)
    flatten(root.right)
    
    if root.left
        crt = root.left
        while crt.right
            crt = crt.right
        end
        crt.right = root.right
        root.right = root.left
        root.left = nil
    end
end