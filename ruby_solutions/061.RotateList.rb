# Given a list, rotate the list to the right by k places, where k is non-negative.

# For example:
# Given 1->2->3->4->5->NULL and k = 2,
# return 4->5->1->2->3->NULL.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
    return head if head.nil? || head.next.nil? || k == 0
    temp = ListNode.new(0)
    temp.next = head
    p = temp
    count = 0
    while p.next
        p = p.next
        count += 1
    end
    p.next = temp.next
    step = count - ( k % count )
    (0...step).each do |i|
        p = p.next
    end
    head = p.next
    p.next =nil
    head
end