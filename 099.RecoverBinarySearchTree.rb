# Two elements of a binary search tree (BST) are swapped by mistake.

# Recover the tree without changing its structure.

# Note:
# A solution using O(n) space is pretty straight forward. Could you devise a constant space solution?

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
def recover_tree(root)
    @mistake1 = TreeNode.new(nil)
    @mistake2 = TreeNode.new(nil)
    @pre = TreeNode.new(nil)
    inorder(root)
    if(!@mistake1.nil? && !@mistake2.nil?)
        @mistake1.val, @mistake2.val = @mistake2.val, @mistake1.val
    end
end

def inorder(root)
    return if root.nil?
    if (!root.left.nil?)
        inorder(root.left)
    end
    
    if !root.nil?
        if !@pre.val.nil?
            if @pre.val > root.val
                if (@mistake1.val.nil?)
                    @mistake1 = @pre
                    @mistake2 = root
                else
                    @mistake2 = root
                end 
            end
        end
    end
    
    @pre = root
    
    if (!root.right.nil?)
        inorder(root.right)
    end
    root
end