require "byebug"

class String
    def select(&prc)
        prc ||= Proc.new{false} 

        finStr = ""
        self.each_char do |char|
            finStr += char if prc.call(char)
        end
        finStr
    end

    def map!(&prc)
        finWord = ""
        self.each_char.with_index do |char, i|
            if prc.call(char, i) != char
                self[i] = prc.call(char,i)
            end
        end
        self
    end
end
