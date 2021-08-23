dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
  hash = Hash.new
  checker = string.split.map! { |item| item.downcase}

  dict.each do |word|
    checker.each do |item|
      if item.include?(word)
        hash[word] = 0 unless hash[word]
        hash[word] += 1
      end
    end
  end
  puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

