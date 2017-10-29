# Reverse a singly linked list.

# click to show more hints.

# Hint:
# A linked list can be reversed either iteratively or recursively. Could you implement both?

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    curr = nil
    while !head.nil? 
        temp = head.next
        head.next = curr
        curr = head
        head = temp
    end
    curr
end