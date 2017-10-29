# 450. Delete Node in a BST

# Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.

# Basically, the deletion can be divided into two stages:

# Search for a node to remove.
# If the node is found, delete the node.
# Note: Time complexity should be O(height of tree).

# Example:

# root = [5,3,6,2,4,null,7]
# key = 3

#     5
#    / \
#   3   6
#  / \   \
# 2   4   7

# Given key to delete is 3. So we find the node with value 3 and delete it.

# One valid answer is [5,4,6,2,null,null,7], shown in the following BST.

#     5
#    / \
#   4   6
#  /     \
# 2       7

# Another valid answer is [5,2,6,null,4,null,7].

#     5
#    / \
#   2   6
#    \   \
#     4   7

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}
def delete_node(root, key)
    return nil if root.nil?
    
    if root.val == key
        if root.left.nil? && root.right.nil?
            return nil
        elsif root.left.nil?
            return root.right
        elsif root.right.nil?
            return root.left
        else
            temp = root.right
            temp = temp.left while !temp.left.nil?
            root.val = temp.val
            root.right = delete_node(root.right, temp.val)
        end
    elsif root.val > key
        root.left = delete_node(root.left, key)
    else
        root.right = delete_node(root.right, key)
    end
    root
end