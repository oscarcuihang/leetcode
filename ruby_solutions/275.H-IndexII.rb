# 275. H-Index II

# Follow up for H-Index: What if the citations array is sorted in ascending order? Could you optimize your algorithm?

# Hint:

# Expected runtime complexity is in O(log n) and the input is sorted.

# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
    n = citations.size
    low = 0
    high = n -1
    while low <= high
        mid =  (low + high) / 2
        if n - mid > citations[mid]
            low = mid + 1
        else 
            high = mid - 1
        end
    end
    n-low
end

# Binary Search