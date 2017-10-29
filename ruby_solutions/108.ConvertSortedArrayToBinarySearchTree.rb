# Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    return [] if nums.nil?
    _sorted_array_to_bst(nums,0,nums.size-1)
end

def _sorted_array_to_bst(nums,lower,upper)
    return if lower > upper
    mid = (lower + upper)/2
    root = TreeNode.new(nums[mid])
    root.left = _sorted_array_to_bst(nums,lower,mid-1)
    root.right = _sorted_array_to_bst(nums,mid+1,upper)
    return root
end