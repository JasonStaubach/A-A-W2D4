class String
    def select(&prc)
        prc ||= Proc.new{false} 

        finStr = ""
        self.each_char do |char|
            finStr += char if prc.call(char)
        end
        finStr
    end
end

puts "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
puts "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
puts "HELLOworld".select          # => ""