# unnest the array

flintstones = [ "Fred", "Wilma" ]
p flintstones

puts "Adding neighbors..."
sleep 1
flintstones << [ "Barney", "Betty" ]

puts "Adding kids..."
sleep 1
flintstones << [ "BamBam", "Pebbles" ]

p flintstones

puts "Unnesting array..."
sleep 2

flintstones.flatten!

puts flintstones.inspect