# 594. Longest Harmonious Subsequence


# We define a harmonious array is an array where the difference between its maximum value and its minimum value is exactly 1.

# Now, given an integer array, you need to find the length of its longest harmonious subsequence among all its possible subsequences.

# Example 1:
# Input: [1,3,2,2,5,2,3,7]
# Output: 5
# Explanation: The longest harmonious subsequence is [3,2,2,2,3].
# Note: The length of the input array will not exceed 20,000.

# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
    return 0 if nums.empty?
    hash = {}
    res = 0
    nums.each do |num|
        if hash[num]
            hash[num] += 1
        else
            hash[num] = 1
        end
    end
    hash = hash.sort.to_h
    last_k = hash.first[0]
    last_v = hash.first[1]
    hash.each do |k, v|
        res = [res, v + last_v].max if last_k + 1 == k
        last_k = k
        last_v = v
    end
    res
end