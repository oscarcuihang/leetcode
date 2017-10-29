# Given a singly linked list, determine if it is a palindrome.

# Follow up:
# Could you do it in O(n) time and O(1) space?

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    stack = []
    temp = head
    while temp
        stack << temp.val
        temp = temp.next
    end
    temp = head
    
    while temp
        return false if stack.pop() != temp.val
        temp = temp.next
    end
    true
end