dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
  hash = Hash.new
  # Splitting the input string and coverting the letters into lowercase
  checker = string.split.map! { |item| item.downcase}
  # Loop through each word of dictionary
  dict.each do |word|
    # Loop through each word of checker
    checker.each do |item|
      # If checker has the same word in dictionary,
      if item.include?(word)
        hash[word] = 0 unless hash[word] # Create a new key-value pair if there's not such key
        hash[word] += 1
      end
    end
  end
  puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

