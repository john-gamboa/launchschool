# turn array into a hash where names are the keys and positions are the values

flintstones = ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

puts "#{flintstones_hash}"