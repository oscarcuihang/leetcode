
hash = [['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000]].to_h

abc = 'MCMXCVI'	

s = abc.reverse!
sum = hash[s[0]]
n = s.size

for i in n-1..0
	puts i
	# index = i
	# if hash[s[index+1]] != nil
	# 	if hash[s[index]] > hash[s[index+1]]
	# 		sum = sum + hash[s[i]]
	# 	else
	# 		sum = sum - hash[s[i]]
	# 	end
	# end
end