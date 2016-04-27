# Turn the hash into an array containing only two elements: Barney's name and number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

array = []
array << flintstones.assoc("Barney")

puts "#{array}"