class PigLatinizer

    def piglatinize(words)
        if words.split.count == 1
            piglatinize_word(words)
        else
            words.split.map{ |word| piglatinize_word(word)}.join(" ")
        end
    end

    def piglatinize_word(word)
        if word =~ (/\A[aeiou]/i)
            word = word + 'way'
         elsif word =~ (/\A[^aeiou]/i)
            first_vowel = word =~ /[aeiou]/i
            array = word.split("")
            prefix = word.slice!(0, first_vowel)
            word = word + prefix + "ay"
         end
      word
    end

end