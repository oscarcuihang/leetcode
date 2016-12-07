404. Sum of Left Leaves

Find the sum of all left leaves in a given binary tree.

Example:

    3
   / \
  9  20
    /  \
   15   7

There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root)
    dfs(root, false)
end

def dfs(root, isleft)
    return 0 if root.nil?
    return root.val if(root.left.nil? && root.right.nil? && isleft)
    return dfs(root.left, true) + dfs(root.right, false)
end