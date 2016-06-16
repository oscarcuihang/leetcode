# Implement int sqrt(int x).

# Compute and return the square root of x.


# @param {Integer} x
# @return {Integer}

def my_sqrt(x)
    l = 1
    h = x
    loop do 
        t=(l+h)/2
        diff=x-t*t
        return t if diff==0 || (diff>0 && (t+1)*(t+1)>x)
        diff>0 ? (l=t) : (h=t)
    end
end