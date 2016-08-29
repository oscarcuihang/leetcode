# There are N gas stations along a circular route, where the amount of gas at station i is gas[i].

# You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from station i to its next station (i+1). You begin the journey with an empty tank at one of the gas stations.

# Return the starting gas station's index if you can travel around the circuit once, otherwise return -1.

# Note:
# The solution is guaranteed to be unique.

# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
    tcost = 0
    tgas = 0
    tank = 0
    start = 0
    n = gas.size
    (0..n-1).each do |i|
        tcost += cost[i]
        tgas += gas[i]
        tank = tank+gas[i]-cost[i]
        if(tank < 0)
            start = i + 1
            tank = 0
        end
    end
    return start if tcost <= tgas
    -1
end