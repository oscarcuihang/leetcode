# Your task is to calculate ab mod 1337 where a is a positive integer 
# and b is an extremely large positive integer given in the form of an array.

# Example1:

# a = 2
# b = [3]

# Result: 8
# Example2:

# a = 2
# b = [1,0]

# Result: 1024


# Solution 1
# using ruby self reverse func

# @param {Integer} a
# @param {Integer[]} b
# @return {Integer}
def super_pow(a, b)
    res = 1
    b = b.reverse
    b.each do |bi|
        res = (res * (a ** bi)) % 1337
        a = (a ** 10) % 1337
    end
    res
end

# Solution 2
# no ruby self reverse func

# @param {Integer} a
# @param {Integer[]} b
# @return {Integer}
def super_pow(a, b)
    res = 1
    (b.size-1).downto(0) do |i|
        res = (res * (a ** b[i])) % 1337
        a = (a ** 10) % 1337
    end
    res
end