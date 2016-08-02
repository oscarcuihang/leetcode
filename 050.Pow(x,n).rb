# Implement pow(x, n).


# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
    return 1.0/power(x, -n) if n <0
    return power(x,n)
end

def power(x, n)
    return 1 if n == 0
    temp = power(x, n / 2)
    if n%2==0
        temp * temp
    else
        temp * temp * x
    end
end