# Given a singly linked list, group all odd nodes together followed by the even nodes. Please note here we are talking about the node number and not the value in the nodes.

# You should try to do it in place. The program should run in O(1) space complexity and O(nodes) time complexity.

# Example:
# Given 1->2->3->4->5->NULL,
# return 1->3->5->2->4->NULL.

# Note:
# The relative order inside both the even and odd groups should remain as it was in the input. 
# The first node is considered odd, the second node even and so on ...

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
def odd_even_list(head) 
    return head unless head
 
	odd = head
	even = head.next
	trav = head.next
	
	while trav && trav.next
		odd.next = trav.next
		trav.next = trav.next.next
		odd.next.next = even
 
		odd = odd.next
		even = odd.next
		trav = trav.next
	end
 
	return head
end