# Example:
# Given nums = [-2, 0, 3, -5, 2, -1]

# sumRange(0, 2) -> 1
# sumRange(2, 5) -> -1
# sumRange(0, 5) -> -3
# Note:
# You may assume that the array does not change.
# There are many calls to sumRange function.


class NumArray

    # Initialize your data structure here.
    # @param {Integer[]} nums
    def initialize(nums)
        @sums = nums.each_with_object([0]) do |num, memo|
            memo << memo[-1] + num
        end
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def sum_range(i, j)
        @sums[j + 1] - @sums[i]
    end
end

# Your NumArray object will be instantiated and called as such:
# num_array = NumArray.new(nums)
# num_array.sum_range(0, 1)
# num_array.sum_range(0, 2)