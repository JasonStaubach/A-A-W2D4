class String
    def select(&prc)
        prc ||= false

        finStr = ""
        self.each_char do |char|
            finStr += char if prc.call(char)
        end
        finStr
    end
end

"app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
"HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
"HELLOworld".select          # => ""