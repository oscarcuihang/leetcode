# 435. Non-overlapping Intervals

# Given a collection of intervals, find the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping.

# Note:
# You may assume the interval's end point is always bigger than its start point.
# Intervals like [1,2] and [2,3] have borders "touching" but they don't overlap each other.
# Example 1:
# Input: [ [1,2], [2,3], [3,4], [1,3] ]

# Output: 1

# Explanation: [1,3] can be removed and the rest of intervals are non-overlapping.
# Example 2:
# Input: [ [1,2], [1,2], [1,2] ]

# Output: 2

# Explanation: You need to remove two [1,2] to make the rest of intervals non-overlapping.
# Example 3:
# Input: [ [1,2], [2,3] ]

# Output: 0

# Explanation: You don't need to remove any of the intervals since they're already non-overlapping.


# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
    
end