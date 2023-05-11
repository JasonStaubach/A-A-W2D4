def no_dupes?(arr)
    countH = Hash.new(0)
    arr.each{|ele| countH[ele] += 1}
    countH = countH.select{|k,v| v == 1}
    countH.keys
end

def no_consecutive_repeats?(arr)
    (0...arr.length - 1).none? {|i| arr[i] == arr[i + 1]}
end


print no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
print no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
print no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
print no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
print no_consecutive_repeats?(['x'])                              # => true