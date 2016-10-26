# Reverse a linked list from position m to n. Do it in-place and in one-pass.

# For example:
# Given 1->2->3->4->5->NULL, m = 2 and n = 4,

# return 1->4->3->2->5->NULL.

# Note:
# Given m, n satisfy the following condition:
# 1 ≤ m ≤ n ≤ length of list.


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)
    return head if head.nil? || head.next.nil?
    dummy = ListNode.new(0)
    dummy.next = head
    head1 = dummy

    for i in 0...(m-1)
        head1 = head1.next
    end
    
    p = head1.next
    
    for i in 0...(n-m)
        tmp = head1.next
        head1.next = p.next
        p.next = p.next.next
        head1.next.next = tmp
    end
    return dummy.next

end