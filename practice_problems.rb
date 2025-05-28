# Complete the skip_animals method that takes an animals array
# and a skip integer and returns an array of all elements except first skip number of items as shown in the example below.

def skip_animals(animals, skip)
  animals.each_with_index.map { |animal, index| "#{index}:#{animal}" }.drop(skip)
end

# your code here
letter_to_number = ('a'..'z').zip(1..26).to_h
secret_messages.map do |string|
    ary_of_words = string.scan(/[ ]+|[^ ]+/)
    ary_of_words.map do |word|
        if word.empty?
            word
        else
            word.chars.map do |char|
                encrypt = letter_to_number[char] + 13 unless letter_to_number[char].nil?
                encrypt = encrypt - 26 if !letter_to_number[char].nil? && encrypt > 26
                letter_to_number.key(encrypt)
            end.join
        end
    end.join
end