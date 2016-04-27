# Add all ages of the Munster family

ages = { "Herman" => 32,
          "Lily" => 30,
          "Grandpa" => 402,
          "Eddie" => 10,
          "Marilyn" => 22,
          "Spot" => 237
        }

total_age = ages.values.inject(:+)
# ages.each_value { |age| total_age + age }

puts "#The Munsters have a total age of #{total_age} years."