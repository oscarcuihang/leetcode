# 42. Trapping Rain Water

# Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.

# For example, 
# Given [0,1,0,2,1,0,1,3,2,1,2,1], return 6.


# The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped. 

#
#     ^
#     |
#     |
#     |                            ||||
#     |                            ||||
#     |            ||||************||||||||****||||
#     |            ||||************||||||||****||||
#     |    ||||****||||||||****||||||||||||||||||||||||
#     |    ||||****||||||||****||||||||||||||||||||||||
#     +---------------------------------------------------->

# @param {Integer[]} height
# @return {Integer}
def trap(height)
    lowerbound = 0
    upperbound = height.size - 1
    boundheight = 0
    capacity = 0
    while lowerbound < upperbound
        lowerhight = height[lowerbound]
        upperhight = height[upperbound]
        if lowerhight < upperhight
            lowerbound += 1
            h = lowerhight
        else
            upperbound -= 1
            h = upperhight
        end
        
        if h > boundheight
            boundheight = h
        else
            capacity += boundheight - h
        end
    end
    capacity
end