# 230. Kth Smallest Element in a BST.rb

# Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.

# Note: 
# You may assume k is always valid, 1 ≤ k ≤ BST's total elements.

# Follow up:
# What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?

# Hint:

# Try to utilize the property of a BST.
# What if you could modify the BST node's structure?
# The optimal runtime complexity is O(height of BST).

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
    stack = []
    node = root
    while node
        stack << node
        node = node.left
    end
    x = 1
    while stack && x <= k
        node = stack.pop()
        x += 1
        right = node.right
        while right
            stack << right
            right = right.left
        end
    end
    node.val
end

# BST:

# 左子树中所有元素的值均小于根节点的值

# 右子树中所有元素的值均大于根节点的值

# 中序遍历（左 -> 根 -> 右）即可以递增顺序访问BST中的节点，从而得到第k小的元素，时间复杂度o(k)