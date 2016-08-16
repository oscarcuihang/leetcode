# The count-and-say sequence is the sequence of integers beginning as follows:
# 1, 11, 21, 1211, 111221, ...

# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.
# Given an integer n, generate the nth sequence.


# @param {Integer} n
# @return {String}
def count_and_say(n)
    s = '1'
    2.upto(n) do |i|
        s = count(s)
    end
    s
end

def count(s)
    cnt = 0
    curr = '#'
    t = ''
    s.each_char do |i|
        if i != curr
            if curr != '#'
                t += cnt.to_s + curr
            end
            curr = i
            cnt = 1
        else
            cnt += 1
        end
    end
    t += cnt.to_s+curr
    t
end