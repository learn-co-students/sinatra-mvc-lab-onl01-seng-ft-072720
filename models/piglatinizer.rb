class PigLatinizer
   
    def piglatinize(user_input)
         result = user_input.split.map do |word|
            if word.start_with?('a','e','i','o','u','A','E','I','O','U')
                word + "way"
            else 
                parts = word.split(/([aeiou].*)/)
                parts[1] + parts[0] + "ay"
            end
        end 
        pig_latin = result.join(" ")
        pig_latin
    end

end