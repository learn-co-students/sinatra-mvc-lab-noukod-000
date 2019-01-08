# class PigLatinizer
#
#     def piglatinize words
#       word_array = words.split ' '
#       word_array.map do |word|
#         if word.scan(/^[aeoui]+/).empty? == false
#            result = word + "way"
#            result
#         else
#           g = word.scan(/^[aeoui]+/).join ''
#           word[0,g.size] = ''
#            word + g + "ay"
#           # result2
#         end
#       end.join" "
#     end
#   end
class PigLatinizer

  def piglatinize word
    word_array = word.split ' '
    word_array.map do |word|
      if word_array.downcase.scan(/^[aeoui]+/).empty? == false
        word+"way"
      else
        w = word.scan(/^[^aeoui]+/).join ''
        word[0,w.size] = ''
        word + w + "ay"
      end
    end.join ' '

  end

end
