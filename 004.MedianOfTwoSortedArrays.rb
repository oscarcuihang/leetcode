# There are two sorted arrays nums1 and nums2 of size m and n respectively.

# Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

# Example 1:
# nums1 = [1, 3]
# nums2 = [2]

# The median is 2.0
# Example 2:
# nums1 = [1, 2]
# nums2 = [3, 4]

# The median is (2 + 3)/2 = 2.5


#S1
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    n = nums1.size + nums2.size
    return findkth(nums1,nums2, n/2+1) if n.odd?
    (findkth(nums1,nums2,n/2)+findkth(nums1,nums2,n/2+1))*0.5
end

def findkth(a,b,k)
    return findkth(b,a,k) if a.size<b.size
    return a[k-1] if b.size==0
    return a[0]>b[0] ? b[0] : a[0] if k==1
    lenb=[b.size,k/2].min
    lena=k-lenb
    return findkth(a[lena..-1],b,k-lena) if a[lena-1]<b[lenb-1]
    findkth(a,b[lenb..-1],k-lenb)
end



#solution2
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    c = (nums1 + nums2).sort
    mid = c.size/2
    ( c.size.odd?) ? c[mid] : ((c[mid]+c[mid-1]).to_f/2)
end
