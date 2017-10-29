# You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8

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

# Tried to have a globle value here, but leetcode might have some conflict with Ruby

def add(value, head)
    # Traverse to the end of the list
    # And insert a new node over there with the specified value
    current = head
    while current.next != nil
        current = current.next
    end 
    current.next = ListNode.new(value)
end

def add_two_numbers(l1, l2)
  carry = 0
    head = nil
  while ( l1 != nil || l2 != nil)
    if l1 == nil
      fval = 0
    else
      fval = l1.val
    end

    if l2 == nil
      sval = 0
    else
      sval = l2.val
    end

    sum = fval + sval + carry
    if sum >= 10 
        carry = 1
    else 
        carry = 0
    end
    
    if sum < 10 
        sum = sum    
    else 
        sum = sum % 10 
    end

    if head == nil
        head = ListNode.new(sum)
    else
        add(sum,head)
    end

    l1 = l1.next if l1 != nil
    l2 = l2.next if l2 != nil

  end
  add(carry,head) if carry > 0
  head
end

