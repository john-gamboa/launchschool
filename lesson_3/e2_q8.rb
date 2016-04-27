# find index which element begins with 'Be'

flintstones = %w(Fred Wilma Barney Betty BamBam Pebbles)

index = flintstones.index {|name| name[0, 2] == 'Be'}

puts "Index #{index} starts with 'Be'"