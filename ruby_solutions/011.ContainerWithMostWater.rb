# Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). 
# n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, 
# which together with x-axis forms a container, such that the container contains the most water.

# Note: You may not slant the container.

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    maxarea = 0
    low = 0
    high = height.size - 1
    while low < high
        if height[low] < height[high]
          area = (high - low) * height[low]
          low += 1
        else
          area = (high - low) * height[high]
          high -= 1
        end
        maxarea = [area, maxarea].max    
    end
    maxarea
end