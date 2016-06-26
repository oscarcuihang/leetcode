# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    res = ListNode.new(0)
    temp = res
    while !l1.nil? && !l2.nil? do
        if l1.val < l2.val
            temp.next = l1
            l1 = l1.next
        else
            temp.next = l2
            l2 = l2.next
        end
        temp = temp.next
    end
    if !l1.nil?
        temp.next = l1
    else
        temp.next = l2
    end
    res.next
end