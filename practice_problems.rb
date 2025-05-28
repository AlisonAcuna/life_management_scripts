# Complete the skip_animals method that takes an animals array
# and a skip integer and returns an array of all elements except first skip number of items as shown in the example below.

def skip_animals(animals, skip)
  animals.each_with_index.map { |animal, index| "#{index}:#{animal}" }.drop(skip)
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index do |x_num, x_i|
        nums.each_with_index do |y_num, y_i|
            next if x_i == y_i
            return [x_i, y_i] if x_num + y_num == target
        end
    end
end