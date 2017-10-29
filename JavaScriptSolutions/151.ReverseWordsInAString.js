// 151. Reverse Words in a String.js
// Given an input string, reverse the string word by word.

// For example,
// Given s = "the sky is blue",
// return "blue is sky the".

/**
 * @param {string} str
 * @returns {string}
 */
var reverseWords = function(str) {
    var res = []; 
    
    str.trim().split(" ").forEach(function(val) { 
        if (val) {
            res.push(val);
        }
    });
    
    return res.reverse().join(" ");
};