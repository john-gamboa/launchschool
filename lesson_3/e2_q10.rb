# shorten each element to 3 characters in one line.

flintstones = %w(Fred Wilma Barney Betty BamBam Pebbles)

flintstones.map! {|name| name[0, 3]}

puts "#{flintstones}"