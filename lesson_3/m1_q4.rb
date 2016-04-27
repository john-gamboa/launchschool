# iterating over an array part one

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

puts "------------"
#iterating over an array part two

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end