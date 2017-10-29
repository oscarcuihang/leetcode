# Given a singly linked list L: L0→L1→…→Ln-1→Ln,
# reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

# You must do this in-place without altering the nodes' values.

# For example,
# Given {1,2,3,4}, reorder it to {1,4,2,3}.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
    return head if head.nil? || head.next.nil?
    pfast = head
    pslow = head
    while !pfast.next.nil? && !pfast.next.next.nil?
        pfast = pfast.next.next
        pslow = pslow.next
    end
    pfast = pslow.next
    pslow.next = nil
    
    pnext = pfast.next
    pfast.next = nil
    while pnext
        q = pnext.next
        pnext.next = pfast
        pfast = pnext
        pnext = q
    end
    tail = head
    while pfast
        pnext = pfast.next
        pfast.next = tail.next
        tail.next = pfast
        tail = tail.next.next
        pfast = pnext
    end
    head
end