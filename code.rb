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

def caesar_cipher_with_modulo(string, shift)
  result = ""
  string.each_char do |char|
    if char.match?(/[a-z]/)
      char = ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr 
      # char current ordinal value - ordinal value of first char in range + shift we want to make
      # % 26 makes sure we stay in the range because 
      # ex. (120 - 97 + 5 = 28) % 26 + 'a'.ord = 28 % 26 + 97 = 99)
      # 99 in ordinal when converted back to string with .chr is 'c'
    elsif char.match?(/[A-Z]/)
      char = ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    end
    result += char
  end
  puts result
end

caesar_cipher_with_modulo("dog", 5) 