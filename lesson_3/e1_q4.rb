#delete and delete_at array methods
#How do they differ?

numbers = [1, 2, 3, 4, 5]

puts "numbers is an array #{numbers}"
puts "numbers after delete_at(1) gives us"
numbers.delete_at(1)
puts "#{numbers}"

numbers = [1, 2, 3, 4, 5]
puts "numbers after delete(1) method gives us"
numbers.delete(1)
puts "#{numbers}"