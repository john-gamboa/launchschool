# shorten each name to just 3 characters

flintstones = %w(Fred Wilma Barney Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0..2]
  
end

puts "#{flintstones}"