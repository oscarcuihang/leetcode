# Compare two version numbers version1 and version2.
# If version1 > version2 return 1, if version1 < version2 return -1, otherwise return 0.

# You may assume that the version strings are non-empty and contain only digits and the . character.
# The . character does not represent a decimal point and is used to separate number sequences.
# For instance, 2.5 is not "two and a half" or "half way to version three", 
# it is the fifth second-level revision of the second first-level revision.

# Here is an example of version numbers ordering:

# 0.1 < 1.1 < 1.2 < 13.37

# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    v1 = version1.split('.')
    v2 = version2.split('.')
    n = [v1.size, v2.size].min
    (0..n).each do |i|
        if v1[i].to_i > v2[i].to_i
            return 1
        elsif v1[i].to_i < v2[i].to_i
            return -1
        else
            nil
        end
    end
    
    while v1.size > n
        return 1 if v1[n].to_i != 0
        n += 1
    end
    
    while v2.size > n
        return -1 if v2[n].to_i != 0
        n += 1
    end
    return 0
end