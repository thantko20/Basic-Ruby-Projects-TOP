def caesar_cipher
  print 'Text: '
  string = gets.to_s
  key = 0
  loop do
    print 'Key: '
    key = gets.to_i
    key.positive? ? break : (p 'Key must be positive integer!')
  end

  new_array = string.chars.map { |char| char.ord }
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
  puts new_array.join('')
end

caesar_cipher
