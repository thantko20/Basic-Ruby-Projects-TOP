def caesar_cipher(string, key)
  new_array = string.chars.map(&:ord)
  new_array.map! do |num|
    if num.between?(65, 90)
      num = ((num - 65 + key) % 26) + 65
      num = num.chr
    elsif num.between?(97, 122)
      num = ((num - 97 + key) % 26) + 97
      num = num.chr
    end
    num = num.chr
  end
  new_array.join('')
end
