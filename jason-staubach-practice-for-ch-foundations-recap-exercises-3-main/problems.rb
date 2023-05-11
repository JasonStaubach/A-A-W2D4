def no_dupes?(arr)
    countH = Hash.new(0)
    arr.each{|ele| countH[ele] += 1}
    countH = countH.select{|k,v| v == 1}
    countH.keys
end

def no_consecutive_repeats?(arr)
    (0...arr.length - 1).none? {|i| arr[i] == arr[i + 1]}
end

def char_indices(str)
    hash = Hash.new(){|h,k| h[k] = [] }
    str.each_char.with_index {|char, i| hash[char] << i}
    hash
end

def longest_streak(str)
    curStreak = 1
    longStreak = 1
    longChar = str[0]
    prevChar = ""
    str.each_char do |char|
        if char == prevChar
            curStreak += 1
        else
            curStreak = 1
        end
        if curStreak >= longStreak
            longStreak = curStreak
            longChar = char
        end
        prevChar = char
    end
    longChar * longStreak
end

def bi_prime?(num)
    (2...num).each do |i|
        if num % i == 0
            j = num / i     # now check if i and j are prime
            bi1prime = (2...i).none?{|prime| i % prime == 0}
            bi2prime = (2...j).none?{|prime| j % prime == 0}
            return true if bi1prime && bi2prime
        end
    end
    false
end

puts bi_prime?(14)   # => true
puts bi_prime?(22)   # => true
puts bi_prime?(25)   # => true
puts bi_prime?(94)   # => true
puts bi_prime?(24)   # => false
puts bi_prime?(64)   # => false
