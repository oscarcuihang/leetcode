# 135. Candy

# There are N children standing in a line. Each child is assigned a rating value.

# You are giving candies to these children subjected to the following requirements:

# Each child must have at least one candy.
# Children with a higher rating get more candies than their neighbors.
# What is the minimum candies you must give?

# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
    n = ratings.size
    array = Array.new(n,1)
    1.upto(n-1) do |i|
        array[i] = array[i-1] + 1 if ratings[i] > ratings[i-1]
    end
    (n-2).downto(0) do |i|
        array[i] = [array[i], array[i+1] + 1].max if ratings[i] > ratings[i+1]
    end
    print array
    array.inject(0, &:+)
end