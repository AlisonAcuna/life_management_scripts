# Complete the skip_animals method that takes an animals array
# and a skip integer and returns an array of all elements except first skip number of items as shown in the example below.

def skip_animals(animals, skip)
  animals.each_with_index.map { |animal, index| "#{index}:#{animal}" }.drop(skip)
end