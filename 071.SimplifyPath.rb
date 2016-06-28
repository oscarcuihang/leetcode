# Given an absolute path for a file (Unix-style), simplify it.

# For example,
# path = "/home/", => "/home"
# path = "/a/./b/../../c/", => "/c"
# click to show corner cases.

# Corner Cases:
# Did you consider the case where path = "/../"?
# In this case, you should return "/".
# Another corner case is the path might contain multiple slashes '/' together, such as "/home//foo/".
# In this case, you should ignore redundant slashes and return "/home/foo".


# @param {String} path
# @return {String}
def simplify_path(path)
    res = []
    path.split('/').each do |i|
        if i == ''
        elsif i == '.'
        elsif i == '..'
            res.pop
        else
            res.push(i)
        end
    end
    "/#{res.join('/')}"
end