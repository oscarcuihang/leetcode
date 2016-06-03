# Given a non-empty array of integers, return the k most frequent elements.

# For example,
# Given [1,1,1,2,2,3] and k = 2, return [1,2].

# Note: 
# You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
# Your algorithm's time complexity must be better than O(n log n), where n is the array's size.

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    hash = {}
    nums.each do |num|
        if hash[num] != nil
            hash[num] = hash[num] - 1
        else
             hash[num] = 0
        end
    end
    hash = hash.sort_by {|key, value| value}.to_h
    hash.take(k).map(&:first)

end