def multiply(num1, num2)
    if num1 == 0 || num2 == 0
        return 0
    elsif num2 >= 1
        return num1 +  multiply(num1, num2 - 1)
    elsif num2 <= -1
        return -num1 + multiply(-num1, -num2 - 1) 
    end
end

puts multiply(3, 5)        # => 15
puts multiply(5, 3)        # => 15
puts multiply(2, 4)        # => 8
puts multiply(0, 10)       # => 0
puts multiply(-3, -6)      # => 18
puts multiply(3, -6)       # => -18
puts multiply(-3, 6)       # => -18