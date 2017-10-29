# Given a binary tree, return the zigzag level order traversal of its nodes' values. (ie, from left to right, then right to left for the next level and alternate between).

# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its zigzag level order traversal as:
# [
#   [3],
#   [20,9],
#   [15,7]
# ]


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
    res = []
    pre_order(root, 0, res)
    res
end

def pre_order(root, level, res)
    if root
        res << [] if res.size < level + 1
        if level % 2 == 0
            res[level] << root.val
        else
            res[level].insert(0, root.val)
        end
        pre_order(root.left, level+1, res)
        pre_order(root.right, level+1, res)
    end
end