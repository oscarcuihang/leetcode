# Sort a linked list using insertion sort.


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
def insertion_sort_list(head)
    return head if head.nil?
    dummy = ListNode.new(0)
    dummy.next = head
    curr = head
    
    while curr.next != nil do
        if curr.next.val < curr.val
            pre = dummy
            while pre.next.val < curr.next.val do 
                pre = pre.next
            end
            tmp = curr.next                     
            curr.next = tmp.next
            tmp.next = pre.next
            pre.next = tmp
        else 
            curr = curr.next
        end
    end
    dummy.next
end