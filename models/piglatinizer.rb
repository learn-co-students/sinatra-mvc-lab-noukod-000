class PigLatinizer
  def piglatinize phrase
    phrase_array = phrase.split(" ")
    
    piglatinized_arr = phrase_array.map do |word|
      word_without_cons = word.gsub(/^[bcdfghjklmnpqrstvwxyz]+/i, '')
      diff = word.size - word_without_cons.size
      
      piglatinized_word = word_without_cons
      cons_to_add = word[0,diff]
      
      if diff > 0
        piglatinized_word = "#{piglatinized_word}#{cons_to_add}ay"
      else
        piglatinized_word = "#{piglatinized_word}way"
      end
      
      piglatinized_word
    end
    
    piglatinized_arr.join(" ")
  end
end