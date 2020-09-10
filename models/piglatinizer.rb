class PigLatinizer

    def initialize
    end

    def piglatinize(string)
        splitstring = string.split(" ")
        splitstring.collect{|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        return_value = ""

        if vowels.include?(word[0])
            return_value = word+"way"
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
            return_value = word[3..-1]+word[0..2]+"ay"
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
            return_value = word[2..-1]+word[0..1]+"ay"
        else
            return_value = word[1..-1]+word[0]+"ay"
        end
        return_value
    end

end