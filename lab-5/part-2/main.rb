module Stringy
  def correct(str)
    (str.scan(/[a-zA-Z0-9]*/).collect do |word|
       if word && str.split.include?(word)
         (word[0].match(/\d/) ? "_#{word[1..]}" : word)
       end
     end).join(' ')
  end

  def correct_array(arr)
    arr.collect do |str|
      [new_str = correct(str).squeeze.strip,
       str.split.length - new_str.split.length + new_str.scan(/( _)|(^_)/).length]
    end
  end
end
