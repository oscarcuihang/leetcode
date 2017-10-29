# You are climbing a stair case. It takes n steps to reach to the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?



# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return n if n <= 2
    
    one = 1
    two = 2
    count = 0
    
    while n > 2
        count = one + two
        one = two
        two = count
        n -= 1
    end
    count
end