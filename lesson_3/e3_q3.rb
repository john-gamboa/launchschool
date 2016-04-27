# Add "Dino" and "Hoppy" to array with #concat and #push

flintstones = %w(Fred Wilma Barney Betty BamBam Pebbles)
flintstones.push("Dino").push("Hoppy")
puts "#{flintstones}"

flintstones1 = %w(Fred Wilma Barney Betty BamBam Pebbles)
flintstones1.concat(%w(Dino Hoppy))
puts "#{flintstones1}"