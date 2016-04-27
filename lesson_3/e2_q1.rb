#see if there's an age for "Spot" in the hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

if ages.has_key?("Spot")
  puts "Spot is #{ages["Spot"]} years old."
else
  puts "I don't see Spot"
end

# or

# ages.member?
# ages.include?