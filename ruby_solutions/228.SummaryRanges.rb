# 228. Summary Ranges

# Given a sorted integer array without duplicates, return the summary of its ranges.

# For example, given [0,1,2,4,5,7], return ["0->2","4->5","7"].


# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
    res = []
    left = 0
    n = nums.size
    while left < n
        right = left
        while right + 1 < n && (nums[right+1]-nums[right])==1
            right += 1
        end
        if left == right
            res << ((nums[left]).to_s)
            left += 1
        else
            res << ((nums[left]).to_s+'->'+(nums[right]).to_s)
            left = right+1
        end
    end
    res
end