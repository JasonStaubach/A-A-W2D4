def no_dupes?(arr)
    countH = Hash.new(0)
    arr.each{|ele| countH[ele] += 1}
    countH = countH.select{|k,v| v == 1}
    countH.keys
end

print no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
print no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
print no_dupes?([true, true, true])            # => []