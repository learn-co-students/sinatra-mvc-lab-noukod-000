class PigLatinizer
def piglatinize word

     a = word.split(" ")
        result = []

         a.each do |words|
          words_arr = words.scan(/\w/)
          if words_arr.first.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/).size > 0
            b = words.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/).first
            words_str = words.sub!(b, "")
            result << words_str + b + "ay"
          else
            result << words + "way"
          end
        end
    result.join(' ')
  end
end
