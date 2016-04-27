# find the total age of just the males in the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_age = 0

munsters.each do |names, details|
  total_age += details["age"] if details["gender"] == "male"
end

puts "#{total_age}"