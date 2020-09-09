class PigLatinizer
    attr_reader :text
    def piglatinize_word(word)
        first_letter = word[0].downcase
        vowels = ["a","e","i","o","u"]
        if vowels.include?(first_letter)
            "#{word}way"
        else 
            word.length > 0
            consonants = []
            while !vowels.include?(word[0])
            consonants << word[0]
            word = word.split("")[1..-1].join
        end
            "#{word + consonants.join + "ay"}"
            #piglatinize word starting with consonant
        end
    end
    def piglatinize(text)
        text.split.collect{|word| piglatinize_word(word)}.join(" ")
    end
end
