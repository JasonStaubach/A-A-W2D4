def multiply(num1, num2)
    if num1 == 0 || num2 == 0
        return 0
    elsif num2 >= 1
        return num1 +  multiply(num1, num2 - 1)
    elsif num2 <= -1
        return -num1 + multiply(-num1, -num2 - 1) 
    end
end

def lucas_sequence(n)
    if n == 0
        return []
    elsif n == 1
        return [2]
    elsif n == 2
        return [2, 1]
    else
        return lucas_sequence(n - 1) + [lucas_sequence(n-1).last + lucas_sequence(n-2).last]
    end
end

print lucas_sequence(0)   # => []
puts
print lucas_sequence(1)   # => [2]    
puts
print lucas_sequence(2)   # => [2, 1]
puts
print lucas_sequence(3)   # => [2, 1, 3]
puts
print lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
puts
print lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]
