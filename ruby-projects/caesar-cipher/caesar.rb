def caesar_ciper (string, num)
    letters = (("A".."Z").to_a + ("a".."z").to_a).join
    new_string = ""
    string.each_char do |char|
        if letters.include?(char)
            idx = letters.index(char)
            other_idx = (idx + num) % letters.length
            new_char = letters[other_idx]
            new_string += (char == char.upcase) ? new_char.upcase : new_char.downcase
        else
            new_string += char
        end
    end
    new_string
end

puts caesar_ciper("What a string!", 5)