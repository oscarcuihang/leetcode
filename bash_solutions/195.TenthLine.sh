rem How would you print just the 10th line of a file?

rem For example, assume that file.txt has the following content:

rem Line 1
rem Line 2
rem Line 3
rem Line 4
rem Line 5
rem Line 6
rem Line 7
rem Line 8
rem Line 9
rem Line 10
rem Your script should output the tenth line, which is:
rem Line 10
rem [show hint]

rem Hint:
rem 1. If the file contains less than 10 lines, what should you output?
rem 2. There's at least three different solutions. Try to explore all possibilities.

# Read from the file file.txt and output the tenth line to stdout.
awk 'NR==10' file.txt