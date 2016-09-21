# Find the total area covered by two rectilinear rectangles in a 2D plane.

# Each rectangle is defined by its bottom left corner and top right corner as shown in the figure.

# Rectangle Area
# Assume that the total area is never beyond the maximum possible value of int.


# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
    area = (c-a)*(d-b)+(h-f)*(g-e)
    
    left , right = [a, e].max, [c, g].min
    return area unless left  < right
    
    lower, upper = [b, f].max, [d, h].min
    return area unless lower < upper
     area - (upper - lower) * (right - left)
end