def substrings(string, array)
    result = Hash.new(0)
    string = string.downcase #to make it case insensitive
    array.each do |word|
        word = word.downcase
        if string.include?(word)
        result[word] = string.scan(word).count
        end
    end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)