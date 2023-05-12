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
    if n <= 0
        return []
    elsif n == 1
        return [2]
    elsif n == 2
        return [2, 1]
    else
        return lucas_sequence(n - 1) + [lucas_sequence(n-1).last + lucas_sequence(n-2).last]
    end
end

def prime_factorization(num)
    smallest_factor = num
    prime = (2...num).none? {|i| smallest_factor = i if num % i == 0}
    
    if prime
        return [num]
    else
        return [smallest_factor] + prime_factorization(num / smallest_factor)
    end
end

print prime_factorization(12)     # => [2, 2, 3]
puts
print prime_factorization(24)     # => [2, 2, 2, 3]
puts
print prime_factorization(25)     # => [5, 5]
puts
print prime_factorization(60)     # => [2, 2, 3, 5]
puts
print prime_factorization(7)      # => [7]
puts
print prime_factorization(11)     # => [11]
puts
print prime_factorization(2017)   # => [2017]


