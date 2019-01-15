class PigLatinizer
  def piglatinize(text)
    text.split(" ").collect do |w|
      "#{w[/[aeiouyAEIOUY][a-zA-Z]*/]}#{w[/[bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ]*/]}#{"#{w[/[bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ]*/]}".length == 0? "w" : ""}ay"
    end.join(" ")
  end
end
# "#{w[/[aeiouy][a-zA-Z]*/]}#{w[/[bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ]*/]}ay"
