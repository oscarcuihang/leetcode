# Remove all elements from a linked list of integers that have value val.

# Example
# Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
# Return: 1 --> 2 --> 3 --> 4 --> 5

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return head if head.nil?
    temp = ListNode.new(0)
    temp.next = head
    pre = temp
    while head
        if head.val == val
            pre.next = head.next
            head = pre
        end
        pre = head
        head = head.next
    end
    temp.next
end