# Given a binary tree, return all root-to-leaf paths.

# For example, given the following binary tree:

#    1
#  /   \
# 2     3
#  \
#   5
# All root-to-leaf paths are:

# ["1->2->5", "1->3"]


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
    res = []
    return res if root.nil?
    dfs(root, res, [])
    res
end

def dfs(node, res, tmp)
    tmp << node.val
    if node.left.nil? && node.right.nil?
        res << '->'
        res << tmp
        tmp.pop
        return
    end
    dfs(node.left, res, tmp) if node.left
    dfs(node.left, res, tmp) if node.right
    tmp.pop
end