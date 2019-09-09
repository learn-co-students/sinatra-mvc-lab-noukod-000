class PigLatinizer

    def piglatinize(phrase)
      split_phrase = phrase.split(" ")
  
      split_phrase.map do |word|
        if word.downcase.scan(/^[aeiuo]+/).empty? == false
          word + "way"
        else
          split_phrase = word.scan(/^[^aeiuo]+/).join(" ")
          word[0,split_phrase.length] = ""
          word + split_phrase + "ay"
        end
  
      end.join(" ")
    end
  
  end 







# class PigLatinizer
#     attr_reader :word

#     # def initialize(word)
#     #     @word = word

#     # end

#     def piglatinize(word)
#         word_to_convert = word.split ''
#         word_to_convert.map do |wd|
#            if wd.downcase.scan(/^[aeoui]+/).empty? == false
#             wd + "way"
#            else
#             word_scan_2 = word.scan(/^[^aeoui]+/).join ''
#              wd[0, word_scan_2.size] = ''
#             wd + word_scan_2 + "ay"
#          end
#         end.join ' '
#     end

#     #def piglatinize(word_phrase)
#     #     word_convert = word_phrase.split ' '
    
#     #     word_convert.map do |word|
#     #       if word.downcase.scan(/^[aeoui]+/).empty? == false
#     #         word + "way"
#     #       else
#     #         word_scan_2 = word.scan(/^[^aeoui]+/).join ''
#     #         word[0, word_scan_2.size] = ''
#     #         word + word_scan_2 + "ay"
#     #       end
#     #     end.join ' '
#     #   end
# end