# 445. Add Two Numbers II
# You are given two non-empty linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Follow up:
# What if you cannot modify the input lists? In other words, reversing the lists is not allowed.

# Example:

# Input: (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 8 -> 0 -> 7

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
def add_two_numbers(l1, l2)
    stack1 = []
    while l1
        stack1.push(l1.val)
        l1 = l1.next
    end
    stack2 = []
    while l2
        stack2.push(l2.val)
        l2 = l2.next
    end
    res = ListNode.new(nil)
    
    sum = 0
    while !stack1.empty? || !stack2.empty?
        sum += stack1.pop if !stack1.empty?
        sum += stack2.pop if !stack2.empty?
        res.val = sum % 10
        head = ListNode.new(sum / 10)
        head.next = res
        res = head
        sum /= 10
    end
    res.val == 0 ? res.next : res
end