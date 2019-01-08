
class PigLatinizer

  def piglatinize word
    word_array = word.split ' '
    word_array.map do |word|
      if word_array.downcase.scan(/^[aeoui]+/).empty? == false
        word+"way"
      else
        g = word.scan(/^[^aeoui]+/).join ''
        word[0,g.size] = ''
        word + g + "ay"
      end
    end.join ' '

  end

end
