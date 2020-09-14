
class PigLatinizer

  def piglatinizer(word)
    letters = word.split("")
    letters.keep_if {|letter| letter != "."}
    
    if vowel?(letters[0])
     letters << "way"
    elsif letters.size > 1 && !vowel?(letters[0])
      until vowel?(letters[0]) 
        letters << letters.shift
      end
      letters  << "ay"
    end
    letters.join
  end

  def piglatinize(text)
    words = text.split(" ")
    words.map! {|word| piglatinizer(word)}
    words.join(" ")
  end

  def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u" || letter == "I" || letter =="A" || letter == "E" || letter == "O" || letter =="U"
  end

end 