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

print char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
print char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

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

puts
puts longest_streak('a')           # => 'a'
puts longest_streak('accccbbb')    # => 'cccc'
puts longest_streak('aaaxyyyyyzz') # => 'yyyyy
puts longest_streak('aaabbb')      # => 'bbb'
puts longest_streak('abc')         # => 'c'