def ceaser_cipher(string, shift)
  result = ""
  string.each_char do |char|
    if char.match?(/[a-z]/)
      char = char.ord
      if char + shift > 122
        char = (97 + (char + shift - 123))
      else 
        char += shift
      end
      result += char.chr 
    elsif char.match?(/[A-Z]/)
      char = char.ord
      if char + shift > 90
        char = (65 + (char + shift - 91)).chr
      else 
        char += shift
      end
      result += char
    else result += char
    end
  end
  puts result
end

ceaser_cipher("What a string!", 5)