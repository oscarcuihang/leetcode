# 475. Heaters
# Winter is coming! Your first job during the contest is to design a standard heater with fixed warm radius to warm all the houses.

# Now, you are given positions of houses and heaters on a horizontal line, find out minimum radius of heaters so that all houses could be covered by those heaters.

# So, your input will be the positions of houses and heaters seperately, and your expected output will be the minimum radius standard of heaters.

# Note:
# Numbers of houses and heaters you are given are non-negative and will not exceed 25000.
# Positions of houses and heaters you are given are non-negative and will not exceed 10^9.
# As long as a house is in the heaters' warm radius range, it can be warmed.
# All the heaters follow your radius standard and the warm radius will the same.

# Example 1:
# Input: [1,2,3],[2]
# Output: 1
# Explanation: The only heater was placed in the position 2, and if we use the radius 1 standard, then all the houses can be warmed.
# Example 2:
# Input: [1,2,3,4],[1,4]
# Output: 1
# Explanation: The two heater was placed in the position 1 and 4. We need to use radius 1 standard, then all the houses can be warmed.
# Subscribe to see which companies asked this question

# @param {Integer[]} houses
# @param {Integer[]} heaters
# @return {Integer}
def find_radius(houses, heaters)
    res = 0
    heaters = heaters.sort
    houses.each do |house|
        radius = 0x7FFFFFFF
        le = bi_search(heaters, house)
        radius = [radius, house - heaters[le - 1]].min if le > 0
        ge = bi_search(heaters, house)
        radius = [radius, heaters[ge] - house].min if ge < heaters.size
        res = [res, radius].max
    end
    res
end

def bi_search(heaters, target)
    left = 0
    right = heaters.size
    mid = (left + right)/2
    while(left < right)
        return mid if heaters[mid] == target
        if heaters[mid] > target
            right = mid
        else
            left = mid + 1
        end
        mid = (left + right) / 2
    end
    left
end

# b-search + sort
# 遍历houses，当前的house：
# b-search 找到不大于house的最大加热器坐标left & 及不小于house的最小加热器坐标right
# 当前房屋所需的最小加热器半径radius = min(house - left, right - house)
# 利用radius更新最终答案res